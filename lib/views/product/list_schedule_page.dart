import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/widgets/card_image.dart';
import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../../theme/widgets/h2accordion.dart';

class ListSchedulePage extends StatefulWidget {
  const ListSchedulePage({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ListSchedulePageState createState() => _ListSchedulePageState();
}

class _ListSchedulePageState extends State<ListSchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const H2AppBar(),
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
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(27),
              topRight: Radius.circular(27),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: Dimension.xl.height,
                horizontal: Dimension.sm.width,
              ),
              child: Column(
                children: [
                  H2Accordion(
                    title: 'Agenda Curitiba',
                    subtitle: 'clique para saber mais detalhes de cada torneio',
                    icon:
                        '''<svg width="21" height="17" viewBox="0 0 21 17" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M2.625 1.5C1.75547 1.5 1.05 2.17188 1.05 3V6C1.05 6.275 0.81375 6.5 0.525 6.5C0.23625 6.5 0 6.275 0 6V3C0 1.61875 1.17469 0.5 2.625 0.5H18.375C19.8253 0.5 21 1.61875 21 3V6C21 6.275 20.7637 6.5 20.475 6.5C20.1862 6.5 19.95 6.275 19.95 6V3C19.95 2.17188 19.2445 1.5 18.375 1.5H2.625ZM16.275 3.5C16.5637 3.5 16.8 3.725 16.8 4V14.75C16.8 15.7156 15.9764 16.5 14.9625 16.5H6.0375C5.02359 16.5 4.2 15.7156 4.2 14.75V4C4.2 3.725 4.43625 3.5 4.725 3.5C5.01375 3.5 5.25 3.725 5.25 4V12.5C6.98906 12.5 8.4 13.8438 8.4 15.5H12.6C12.6 13.8438 14.0109 12.5 15.75 12.5V4C15.75 3.725 15.9862 3.5 16.275 3.5ZM7.35 15.5C7.35 14.3969 6.40828 13.5 5.25 13.5V14.75C5.25 15.1656 5.60109 15.5 6.0375 15.5H7.35ZM14.9625 15.5C15.3989 15.5 15.75 15.1656 15.75 14.75V13.5C14.5917 13.5 13.65 14.3969 13.65 15.5H14.9625ZM10.5 7C8.95781 7 7.875 7.97813 7.875 9C7.875 10.0219 8.95781 11 10.5 11C12.0422 11 13.125 10.0219 13.125 9C13.125 7.97813 12.0422 7 10.5 7ZM14.175 9C14.175 10.7375 12.4359 12 10.5 12C8.56406 12 6.825 10.7375 6.825 9C6.825 7.2625 8.56406 6 10.5 6C12.4359 6 14.175 7.2625 14.175 9Z" fill="#CECECE"/></svg>''',
                    content: Column(
                      children: [
                        CardImage.schedule(
                          action: () => Nav.pushNamed(
                            BaseAppModuleRouting.scheduleDetail,
                          ),
                          date: "15/05",
                          time: "19:30",
                          buyIn: "R\$150,00",
                          backgroundImage:
                              "https://h2online.com.br/app-koud/schedule7.png",
                        ),
                        Dimension.md.vertical,
                        CardImage.schedule(
                          action: () => Nav.pushNamed(
                            BaseAppModuleRouting.scheduleDetail,
                          ),
                          date: "15/05",
                          time: "19:30",
                          buyIn: "R\$150,00",
                          backgroundImage:
                              "https://h2online.com.br/app-koud/schedule7.png",
                        ),
                        Dimension.md.vertical,
                        CardImage.schedule(
                          action: () => Nav.pushNamed(
                            BaseAppModuleRouting.scheduleDetail,
                          ),
                          date: "15/05",
                          time: "19:30",
                          buyIn: "R\$150,00",
                          backgroundImage:
                              "https://h2online.com.br/app-koud/schedule7.png",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
