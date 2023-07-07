import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart';

class VerifyTermsPage extends StatefulWidget {
  const VerifyTermsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _VerifyTermsPageState createState() => _VerifyTermsPageState();
}

class _VerifyTermsPageState extends State<VerifyTermsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const H2AppBar(
        title: Text('H2 Pay'),
        centerTitle: true,
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF166FED),
              Color(0xFF00092A),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(27),
              topRight: Radius.circular(27),
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.sm.width),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Dimension.xl.vertical,
                            Text(
                              'Termos e Condições',
                              style: TextStyle(fontSize: 19.fontSize),
                            ),
                            const Dimension(2.5).vertical,
                            Container(
                              decoration: BoxDecoration(
                                color: AppThemeBase.colorSecondary02,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: const Dimension(1.87).width,
                                vertical: const Dimension(1.25).height,
                              ),
                              child: Text(
                                '''A seguir apresentamos a você os Termos e Condições de Uso, documento que relaciona as principais regras que devem ser observadas por todos que acessam a PLATAFORMA H2 FINTECH ou utilizam suas funcionalidades.
Como condição para acesso e uso das funcionalidades exclusivas da PLATAFORMA H2 FINTECH, sobretudo a contratação dos serviços oferecidos, o USUÁRIO declara que fez a leitura completa e atenta das regras deste documento e de sua Política de Privacidade, estando plenamente ciente e de acordo com elas.
1. Funcionalidades da PLATAFORMA H2 FINTECH
Para utilizar as funcionalidades da PLATAFORMA H2 FINTECH, o USUÁRIO deverá criar uma Conta de Acesso e ser maior de 18 (dezoito) anos e juridicamente capaz.
A H2 FINTECH poderá recusar ou não aprovar solicitações de cadastros realizadas por USUÁRIOS que não fornecerem dados corretos ou não enviarem os documentos solicitados.
A H2 FINTECH poderá alterar os critérios de elegibilidade de acesso e utilização da PLATAFORMA H2 FINTECH a qualquer momento, sem que para isso tenha de fazer qualquer tipo de comunicação ou aviso prévio aos USUÁRIOS.
A H2 FINTECH possui a faculdade de se recusar a conceder ou cancelar a Conta de Acesso de qualquer USUÁRIO que a utilizar de forma fraudulenta, violar ou tentar violar os presentes Termos e Condições de Uso, a Política de Privacidade, outras políticas ou qualquer documento legal na PLATAFORMA H2 FINTECH.

Para criar uma Conta de Acesso na PLATAFORMA H2 FINTECH é necessário que o USUÁRIO envie seus dados, documentos e registre sua biometria facial por meio da câmera de seu dispositivo móvel.
A PLATAFORMA H2 FINTECH permite realizar contratações de crédito, confissões de dívida, aditamentos contratuais, cessões de crédito, de acordo com o perfil do USUÁRIO.
Para contratar um produto ou serviço disponibilizado na PLATAFORMA H2 FINTECH, o USUÁRIO deverá firmar contrato específico, que estará disponível na própria PLATAFORMA H2 FINTECH.
Ao contratar produtos por meio da PLATAFORMA H2 FINTECH o USUÁRIO poderá, à critério da H2 FINTECH, acumular pontos que futuramente poderão ser convertidos em benefícios.
2. Responsabilidades e Obrigações dos Usuários
Os USUÁRIOS são responsáveis e se obrigam a:
•	Utilizar com retidão e de forma ética a PLATAFORMA H2 FINTECH, respeitando as condições que regem a sua utilização e finalidade.
•	Fornecer dados cadastrais corretos, completos e atualizados, além de informar canal de contato apto a ser acionado pela H2 FINTECH para o melhor cumprimento dos serviços. Se a qualquer momento for constatado que o USUÁRIO forneceu dados falsos ou não condizentes com a realidade, A H2 FINTECH se reserva ao direito de suspender ou cancelar sua Conta de Acesso, sem prejuízo de adotar as medidas que entender cabíveis.
•	Manter o sigilo dos dados de sua Conta de Acesso em relação a terceiros e utilizá-la de modo individual e intransferível, não disponibilizando, divulgando ou compartilhando sua senha ou qualquer mecanismo de autenticação com quem quer que seja. Caso suspeite que a confidencialidade de sua senha foi violada, o USUÁRIO deverá proceder sua troca ou atualização o mais rápido possível ou contar os canais de atendimento disponíveis.
•	Adotar senha de acesso, forte com no mínimo 6 e no máximo 8 dígitos, sem sequências obvias de fácil dedução. Em adição, o USUÁRIO não deve reutilizar sua senha em aplicativos, portais e sites de terceiros.
•	Adotar medidas em seus dispositivos tecnológicos para evitar o acesso físico e lógico por terceiros não autorizados, tais como utilização de senha e/ou biometria.
•	Reconhecer que todos os acessos e operações realizadas após sua autenticação digital bem-sucedida são interpretados como sendo de sua responsabilidade de forma incontestável, inclusive aqueles derivados de uso indevido ou divulgação desta para terceiros.
•	Deixar seus sistemas de anti-spam, filtros similares ou configurações de redirecionamento de mensagens ajustados de modo que não interfiram no recebimento dos comunicados e materiais da PLATAFORMA H2 FINTECH, não sendo aceitável nenhuma escusa caso não tenha tido acesso a algum e-mail ou mensagem eletrônica em virtude dos recursos mencionados. A H2 FINTECH não envia e-mails, SMS ou outros tipos de comunicação com links que não sejam do domínio H2 Fintech.com.br, desta forma, caso o USUÁRIO receba alguma mensagem desse tipo, deve estar ciente dos riscos ao clicar no link, pois pode ser tentativa de fraude conhecida como phishing.
•	Respeitar todos os direitos de propriedade intelectual de titularidade da H2 FINTECH, incluindo todos os direitos referentes a terceiros que porventura estejam, ou estiveram, de alguma forma ali disponíveis. Da mesma forma, os USUÁRIOS jamais poderão reproduzir os conteúdos disponíveis na PLATAFORMA H2 FINTECH, em especial suas marcas e layout do ambiente.
•	Não acessar áreas de programação da PLATAFORMA H2 FINTECH, seu banco de dados, códigos fonte ou qualquer outro conjunto de dados disponíveis nestes ambientes.
•	Não realizar ou permitir engenharia reversa, nem traduzir, decompilar, copiar, modificar, reproduzir, alugar, sublicenciar, publicar, divulgar, transmitir, emprestar, distribuir ou, de outra maneira, dispor inapropriadamente das funcionalidades da PLATAFORMA H2 FINTECH
•	Não utilizar softwares spider ou de mineração de dados, de qualquer tipo ou espécie, além de outro aqui não tipificado que atue de modo similar.
As funcionalidades que compõem a PLATAFORMA H2 FINTECH são oferecidas na forma de prestação de serviço, não conferindo ao USUÁRIO nenhum direito sobre o software utilizado pela H2 FINTECH ou sobre suas estruturas de informática que sustentam a PLATAFORMA H2 FINTECH
A eventual remoção, bloqueio ou suspensão de qualquer conteúdo ou funcionalidade da PLATAFORMA H2 FINTECH em decorrência de alguma reclamação, deverá ser sempre compreendida como demonstração de boa-fé e intenção de solução amigável de conflitos, jamais, como reconhecimento de culpa ou de qualquer infração pela H2 FINTECH a direito de terceiro.
Na incidência de danos à H2 FINTECH ou a terceiros, o responsável se compromete a arcar com todas as obrigações de indenizar o sujeito lesado, inclusive aqueles cuja origem for de atos praticados por meio de sua Conta de Acesso, assumindo o polo passivo de ação judicial ou procedimento administrativo e requerendo a exclusão da H2 FINTECH, devendo arcar totalmente com as despesas e custas processuais atinentes, deixando-a livre de prejuízos e ônus.
•	O descumprimento de quaisquer das obrigações aqui estipuladas poderá acarretar na suspensão total ou parcial das funcionalidades, ou exclusão da Conta de Acesso, sem aviso prévio, conforme previsto neste documento.
3. Isenção e Limitações de Responsabilidade
A PLATAFORMA H2 FINTECH e suas funcionalidades são apresentadas aos USUÁRIOS na maneira como estão disponíveis, podendo passar por constantes aprimoramentos e atualizações, obrigando-se a H2 FINTECH a:
•	preservar a sua funcionalidade, com links não quebrados e utilizando layout que respeita a usabilidade e navegabilidade, sempre que possível;
•	exibir as funcionalidades de maneira clara, completa, precisa e suficiente de modo que exista a exata percepção das operações realizadas;
•	proteger, por meio do estado da técnica disponível, os dados coletados pelas funcionalidades disponibilizadas.

A H2 FINTECH envida seus esforços para a manutenção da disponibilidade contínua e permanente da PLATAFORMA H2 FINTECH que, no entanto, pode ocorrer, eventualmente, alguma indisponibilidade temporária decorrente de manutenção necessária ou mesmo gerada por motivo de força maior, como desastres naturais, falhas nos sistemas de comunicação e acesso à Internet ou fatos de terceiro que fogem de sua esfera de vigilância e responsabilidade.
•	Se isso ocorrer, a H2 FINTECH fará o que estiver ao seu alcance para restabelecer o acesso à PLATAFORMA H2 FINTECH o mais breve possível, dentro das limitações técnicas de seus serviços e serviços de terceiros, dos quais depende para ficar online.
•	Eventuais procedimentos de manutenção que acarretem a indisponibilidade da PLATAFORMA H2 FINTECH por longos períodos serão informados por meio dos canais oficiais de comunicação, como e-mails, perfis oficiais em mídias sociais ou telefone de atendimento.
O USUÁRIO não possui qualquer direito para exigir a disponibilidade da PLATAFORMA H2 FINTECH tampouco poderá pleitear indenização ou reparação de danos em caso da PLATAFORMA H2 FINTECH permanecer fora do ar, independente da motivação.
A H2 FINTECH não se responsabiliza:
•	Por quaisquer problemas, bugs, glitches ou funcionamentos indevidos que ocorrerem nos dispositivos e equipamentos dos USUÁRIOS e sejam resultantes direta ou indiretamente do uso regular da PLATAFORMA H2 FINTECH
•	Por qualquer dano direto ou indireto ocasionado por eventos de terceiros, a exemplo, mas não se limitando a ataque de hackers, falhas no sistema, no servidor ou na conexão à internet, inclusive por ações de softwares que possam, de algum modo, danificar ativos físicos ou lógicos ou a conexão dos USUÁRIOS em decorrência do acesso, utilização ou navegação na PLATAFORMA H2 FINTECH, bem como a transferência de dados, arquivos, imagens, textos, áudios ou vídeos contidos neste.
•	Pela navegação dos USUÁRIOS nos links externos disponibilizados na PLATAFORMA H2 FINTECH, sendo seus deveres a leitura dos Termos e Condições de Uso e Política de Privacidade do recurso acessado e agir conforme o determinado.
•	Por verificar, controlar, aprovar ou garantir a adequação ou exatidão das informações ou dados disponibilizados em tais links, não sendo, portanto, responsáveis por prejuízos, perdas ou danos ocorridos pela visita de tais sites, cabendo ao interessado verificar a confiabilidade das informações e dados ali exibidos antes de tomar alguma decisão ou praticar algum ato.
4. Privacidade dos Usuários
A H2 FINTECH possui documento próprio, denominado Política de Privacidade, que regula o tratamento dos dados coletados na PLATAFORMA H2 FINTECH, sendo parte integrante e inseparável dos presentes Termos e Condições de Uso e pode ser acessada pelo link encontrado em .....
Caso alguma disposição da Política de Privacidade conflite com qualquer outra do presente documento, deverá prevalecer o descrito na norma mais específica.
5. Disposições Gerais
O atendimento aos USUÁRIOS poderá ser realizado por meio do canal de atendimento disponibilizado conforme a seguir, cujo horário de funcionamento é das 08:00 às 20:00 horas, de segunda a sexta e de 08:00 a 12:00, nos sábados, exceto domingo e feriados nacionais:
•	a) E-mail: ....
Os USUÁRIOS poderão se valer dos canais de atendimento toda vez que presenciarem ou verificarem conteúdo impróprio na PLATAFORMA H2 FINTECH, seja ele notadamente ilícito ou contrário às regras de uso aqui estipuladas.
Os presentes Termos e Condições de Uso estão sujeitos a constante melhoria e aprimoramento. Assim, a H2 FINTECH se reserva o direito de modificá-los a qualquer momento, conforme sua finalidade ou conveniência, tal qual para adequação e conformidade legal de disposição de lei ou norma que tenha força jurídica equivalente, cabendo aos USUÁRIOS verificá-lo sempre que efetuar o acesso na PLATAFORMA H2 FINTECH.
•	Ocorrendo atualizações neste documento ou na Política de Privacidade, a H2 FINTECH notificará o USUÁRIO mediante as ferramentas disponíveis na PLATAFORMA H2 FINTECH ou pelos meios de contato fornecidos pelo USUÁRIO.
Ao navegar pela PLATAFORMA H2 FINTECH e utilizar suas funcionalidades, o USUÁRIO aceita guiar-se pelos Termos e Condições de Uso e pela Política de Privacidade que se encontram vigentes na data de acesso. Por isso, é recomendável que o USUÁRIO se mantenha atualizado.

A tolerância do eventual descumprimento de quaisquer das cláusulas e condições do presente instrumento não constituirá novação das obrigações aqui estipuladas e tampouco impedirá ou inibirá a exigibilidade das mesmas a qualquer tempo.
Caso alguma disposição destes Termos e Condições de Uso ou da Política de Privacidade publicadas na PLATAFORMA H2 FINTECH for julgada inaplicável ou sem efeito, o restante de ambos os documentos continua a viger, sem a necessidade de medida judicial que declare tal assertiva.
O USUÁRIO reconhece que toda comunicação realizada por e-mail (ao endereço de e-mail informado no seu cadastro) é válida, eficaz e suficiente para a divulgação de qualquer assunto que se refira aos serviços objeto deste contrato, bem como às condições de sua prestação ou a qualquer outro assunto nele abordado, ressalvadas as disposições expressamente diversas previstas nestes Termos e Condições de Uso.
A PLATAFORMA H2 FINTECH tem como base a data e horários oficiais de Brasília.
O USUÁRIO declara estar ciente de que a falsidade nas informações em seus dados pessoais, de terceiros ou de documentos fornecidos digitalmente implicará nas penalidades cabíveis, previstas no artigo 299 do Código Penal, além de implicar em sua responsabilidade civil e administrativa decorrente de eventual falsidade.
6. Lei Aplicável e Jurisdição
Os Termos e Condições de Uso aqui descritos são interpretados segundo a legislação brasileira, no idioma português, sendo eleito o Foro da Comarca da Capital do Estado de São Paulo para dirimir qualquer litígio ou controvérsia envolvendo o presente documento, salvo ressalva específica de competência pessoal, territorial ou funcional pela legislação aplicável.
7. Glossário
Para os fins deste documento, devem se considerar as seguintes definições e descrições para seu melhor entendimento:
•	Anti-Spam: Sistema que evita correspondências não desejadas, como publicidade em massa, pelo bloqueio de mensagens ou as movendo para pasta específica.
•	Conta de Acesso: Credencial de um USUÁRIO cadastrado que permite o acesso às funcionalidades exclusivas da PLATAFORMA H2 FINTECH, que é definida pelo nome de usuário e senha.
•	Crawler/Spider: Programas desenvolvidos para atuar ou obter informações de modo automatizado em sites.
•	Layout: Conjunto compreendido entre aparência, design e fluxos da PLATAFORMA H2 FINTECH.
•	Link: Terminologia para endereço de internet.
•	H2 FINTECH: H2 Credit LTDA., pessoa jurídica de direito privado, inscrita no CNPJ sob o nº ...., com sede na ......
•	PLATAFORMA: Designa a PLATAFORMA da H2 FINTECH.
•	USUÁRIO: Pessoa Física que acessa ou interage com as atividades oferecidas pela PLATAFORMA H2 FINTECH''',
                                style: context.textTheme.labelSmall,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Dimension.sm.vertical,
                            Text(
                              'Insira o código de 4 números',
                              style: context.textTheme.bodySmall!.copyWith(
                                  color: AppThemeBase.colorSecondary04,
                                  fontWeight: FontWeight.normal),
                            ),
                            Dimension.md.vertical,
                            TextButton(
                              child: Text(
                                'Não recebeu nenhum código? Reenviar',
                                style: TextStyle(
                                  color: context.colorScheme.colorPrimaryMedium,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: IntrinsicHeight(
                  child: Container(
                    color: Colors.white,
                    child: NextWidget(
                      topWidget: Row(
                        children: [
                          Switch(
                            value: true,
                            activeColor: AppThemeBase.colorPrimarySuperlight,
                            activeTrackColor: AppThemeBase.colorPrimaryMedium,
                            onChanged: (value) => {},
                          ),
                          Dimension.sm.horizontal,
                          Expanded(
                            child: Text(
                              'Declaro que li e concordo com os termos de uso acima.',
                              style: context.text.body2.copyWith(color: context.colorScheme.colorPrimaryDarkest)
                            ),
                          )
                        ],
                      ),
                      title: 'Avançar',
                      action: () {
                        Nav.pushNamed(BaseAppModuleRouting.verifyComplementPage);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
