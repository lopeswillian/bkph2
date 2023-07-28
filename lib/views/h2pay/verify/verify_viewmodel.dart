import 'package:apph2/domain/entities/caf_file_param.dart';
import 'package:apph2/domain/entities/caf_request_params.dart';
import 'package:apph2/domain/entities/document_side_type.dart';
import 'package:apph2/domain/entities/job.dart';
import 'package:apph2/domain/entities/monthly_income.dart';
import 'package:apph2/domain/entities/sms_params.dart';
import 'package:apph2/domain/entities/verify_user_h2pay_params.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/usecases/create_user_h2pay_usecase.dart';
import 'package:apph2/usecases/get_jobs_usecase.dart';
import 'package:apph2/usecases/get_monthly_income_usecase.dart';
import 'package:apph2/usecases/get_sms_code_usecase.dart';
import 'package:apph2/usecases/get_terms_condition.dart';
import 'package:apph2/usecases/send_caf_validation_usecase.dart';
import 'package:apph2/usecases/validate_sms_code_usecase.dart';
import 'package:apph2/views/h2pay/h2pay_viewmodel.dart';
import 'package:apph2/views/h2pay/verify/verify_state.dart';
import 'package:apph2/views/login/login_viewmodel.dart';

class VerifyViewModel extends ViewModel<VerifyState> {
  final IGetSmsCodeUseCase _getSmsCodeUseCase;
  final IValidateSmsCodeUseCase _validateSmsCodeUseCase;
  final IGetMonthlyIncomeUseCase _getMonthlyIncomeUseCase;
  final IGetJobsUseCase _getJobsUseCase;
  final IGetTermsConditionsUseCase _getTermsConditionsUseCase;
  final ICreateH2PayUserUseCase _createH2PayUserUseCase;
  final LoginViewModel _loginViewModel;
  final H2PayViewModel _h2payViewModel;
  final ISendCafValidationUseCase _sendCafValidationUseCase;

  VerifyViewModel(
    this._getSmsCodeUseCase,
    this._validateSmsCodeUseCase,
    this._getMonthlyIncomeUseCase,
    this._getJobsUseCase,
    this._getTermsConditionsUseCase,
    this._createH2PayUserUseCase,
    this._loginViewModel,
    this._h2payViewModel,
    this._sendCafValidationUseCase,
  ) : super(VerifyState.initial());

  Future<void> getJobs() async {
    final jobs = await _getJobsUseCase();

    final newState = jobs.fold(
      (l) => state,
      (jobs) => state.copyWith(listJobs: jobs),
    );
    emit(newState);
  }

  Future<void> getMonthlyIncome() async {
    final montlhyIncome = await _getMonthlyIncomeUseCase();

    final newState = montlhyIncome.fold(
      (l) => state,
      (listMonthlyIncome) =>
          state.copyWith(listMonthlyIncome: listMonthlyIncome),
    );
    emit(newState);
  }

  Future<void> getTerm() async {
    final term = await _getTermsConditionsUseCase();

    final newState = term.fold(
      (l) => state,
      (termData) => state.copyWith(termsCondition: termData),
    );
    emit(newState);
  }

  Future<void> getSmsCode() async {
    emit(
      state.copyWith(
        loading: true,
        error: '',
      ),
    );

    final result = await _getSmsCodeUseCase(
      SmsParams(
        cellphone: '+55${state.phone}',
        cpf: _loginViewModel.state.user!.cpf,
        email: _loginViewModel.state.user!.email,
        name: _loginViewModel.state.user!.name,
      ),
    );

    result.fold(
      (l) => emit(
        state.copyWith(
          loading: false,
          error: 'Erro ao enviar sms.',
        ),
      ),
      (smsSended) => emit(state.copyWith(loading: false)),
    );
  }

  Future<bool> validateSmsCode(String code) async {
    emit(
      state.copyWith(loading: true, error: ''),
    );
    bool validCode = false;

    final result = await _validateSmsCodeUseCase(
      SmsParams(
        cellphone: '55${state.phone}',
        cpf: _loginViewModel.state.user!.cpf,
        email: _loginViewModel.state.user!.email,
        name: _loginViewModel.state.user!.name,
        code: code,
      ),
    );

    final newState = result.fold(
      (l) {
        validCode = false;
        return state.copyWith(
          loading: false,
          error: 'Código inválido ou expirado.',
        );
      },
      (smsSended) {
        validCode = true;
        return state.copyWith(loading: false);
      },
    );

    emit(newState);
    return validCode;
  }

  void setDocumentType(DocumentSideType document) {
    emit(state.copyWith(typeDocument: document));
  }

  void setPhone(String phone) {
    emit(state.copyWith(phone: phone));
  }

  void setSelectedJob(Job job) {
    emit(state.copyWith(selectedJob: job));
  }

  void setSelectedMonthlyIncome(MonthlyIncome monthlyIncome) {
    emit(state.copyWith(selectedMonthlyIncome: monthlyIncome));
  }

  void setCafId(String cafId) {
    emit(state.copyWith(cafId: cafId));
  }

  void setImageCaf(CafFileParam fileParam) {
    List<CafFileParam> listFiles = [...state.cafFiles];
    listFiles.add(fileParam);
    emit(
      state.copyWith(
        cafFiles: listFiles,
      ),
    );
  }

  void clearCafState() {
    emit(state.copyWith(
      cafFiles: [],
      cafId: '',
    ));
  }

  Future<void> sendCafvalidation() async {
    emit(
      state.copyWith(
        loading: true,
        error: '',
        successVerification: false,
      ),
    );

    final response = await _sendCafValidationUseCase(
      CafRequestParams(
        files: state.cafFiles,
        templateId: '64c2836492d4a60008f06caa',
        callbackUrl: 'https://dc023ad05f.nxcli.io/webhooks/caf/document-verification',
        attributes: CafPropsAttributes(
          cpf: _loginViewModel.state.user!.cpf,
          birthDate: _loginViewModel.state.user!.birthdate,
        ),
      ),
    );

    final newState = response.fold(
      (l) => state.copyWith(
        loading: false,
        error: 'Não foi possível validar os documentos. Tente novamente!',
      ),
      (r) => state.copyWith(
        cafId: r.id,
        loading: false,
        error: '',
      ),
    );

    if (newState.error != '') {
      emit(state);
      return;
    }

    final registerState = await createUserH2Pay(newState.cafId);

    emit(
      newState.copyWith(
        error: registerState.error,
        successVerification: registerState.error == '',
      ),
    );
  }

  Future<VerifyState> createUserH2Pay(String cafId) async {
    final result = await _createH2PayUserUseCase(
      VerifyUserH2PayParams(
        cellphone: '55${state.phone}',
        docValidationId: cafId,
        jobId: state.selectedJob!.jobId.toString(),
        monthlyIncomeId:
            state.selectedMonthlyIncome!.monthlyIncomeId.toString(),
        termsAndConditions: true,
        termsAndConditionsId: state.termsCondition!.termId.toString(),
        rewardsClientId: _h2payViewModel.state.customer!.rewardsId.toString(),
      ),
    );

    final newState = result.fold(
      (l) {
        return state.copyWith(
          error: 'Erro ao verificar conta. Tente novamente mais tarde!',
          loading: false,
        );
      },
      (r) {
        return state.copyWith(
          loading: false,
          error: '',
        );
      },
    );

    return newState;
  }
}
