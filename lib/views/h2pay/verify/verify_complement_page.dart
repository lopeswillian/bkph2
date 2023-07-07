import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart';

class VerifyComplementPage extends StatefulWidget {
  const VerifyComplementPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _VerifyComplementPageState createState() => _VerifyComplementPageState();
}

class _VerifyComplementPageState extends State<VerifyComplementPage> {
  late String _selectedValue = 'Abaixo de 10 mil reais';
  late String _selectedValue2 = 'Aposentado';

  static final List<String> _radioValues = [
    'Abaixo de 10 mil reais',
    'Entre 10 mil reais e 20 mil reais',
    'Acima 20 mil reais',
  ];

  static final List<String> _radioValues2 = [
    'Aposentado',
    'Autônomo',
    'Empregado CLT',
    'Empresário',
    'Sem ocupação profissional',
    'Servidor público'
  ];

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
                              '1. Informações complementares',
                              style: TextStyle(
                                fontSize: 19.fontSize,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Dimension.md.vertical,
                            const Divider(),
                            Dimension.md.vertical,
                            Text(
                              'Informe sua Renda Mensal',
                              style: context.text.body1,
                            ),
                            Dimension.md.vertical,
                            ..._radioValues
                                .map(
                                  (value) => RadioListTile(
                                    title: Text(
                                      value,
                                      style: context.text.body2,
                                    ),
                                    dense: true,
                                    contentPadding: EdgeInsets.zero,
                                    visualDensity: const VisualDensity(
                                      horizontal: VisualDensity.minimumDensity,
                                      vertical: VisualDensity.minimumDensity,
                                    ),
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    value: value,
                                    groupValue: _selectedValue,
                                    onChanged: (newValue) {
                                      setState(() {
                                        _selectedValue = newValue!;
                                      });
                                    },
                                  ),
                                )
                                .toList(),
                            Dimension.md.vertical,
                            const Divider(),
                            Dimension.md.vertical,
                            Text(
                              'Qual sua Ocupação',
                              style: context.text.body1,
                            ),
                            Dimension.md.vertical,
                            ..._radioValues2
                                .map(
                                  (value) => RadioListTile(
                                    title: Text(
                                      value,
                                      style: context.text.body2,
                                    ),
                                    dense: true,
                                    contentPadding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        100.0,
                                      ), // Ajuste o raio de acordo com o tamanho desejado
                                    ),
                                    visualDensity: const VisualDensity(
                                      horizontal: VisualDensity.minimumDensity,
                                      vertical: VisualDensity.minimumDensity,
                                    ),
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    value: value,
                                    groupValue: _selectedValue2,
                                    onChanged: (newValue) {
                                      setState(() {
                                        _selectedValue2 = newValue!;
                                      });
                                    },
                                  ),
                                )
                                .toList(),
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
                      title: 'Avançar',
                      action: () {
                        Nav.pushNamed(BaseAppModuleRouting.verifyDocumentPage);
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
