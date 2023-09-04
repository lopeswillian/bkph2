import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/infraestructure/num_extension.dart';
import 'package:apph2/theme/widgets/h2loading.dart';
import 'package:apph2/views/product/product_state.dart';
import 'package:apph2/views/product/product_viewmodel.dart';
import 'package:flutter_html/flutter_html.dart' hide Dimension;
import 'package:flutter/material.dart' hide View;
import 'package:flutter_svg/svg.dart';

import '../../theme/theme.dart';
import '../../theme/widgets/h2accordion.dart';

class SchedulePageArguments {
  final int eventId;
  final String title;
  SchedulePageArguments({
    required this.eventId,
    required this.title,
  });
}

class SchedulePage extends StatefulWidget {
  final SchedulePageArguments arguments;
  const SchedulePage({Key? key, required this.arguments}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage>
    with View<ProductViewModel> {
  bool isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    viewModel.getEventDetails(widget.arguments.eventId);
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel, ProductState>(
      viewModel: viewModel,
      buildWhen: (previous, current) =>
          previous.error != current.error ||
          previous.loading != current.loading,
      builder: (context, state) {
        return state.loading
            ? const Scaffold(
                body: Center(
                  child: H2Loading(),
                ),
              )
            : _buildPage(context, state);
      },
    );
  }

  Widget _buildPage(BuildContext context, ProductState state) {
    return Scaffold(
      appBar: H2AppBar(
        title: Column(
          children: [
            const Text('Agenda'),
            Dimension.xxs.vertical,
            Text(
              widget.arguments.title,
              style: TextStyle(fontSize: 12.fontSize),
            )
          ],
        ),
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
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(27),
            topRight: Radius.circular(27),
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
                  // horizontal: Dimension.sm.width,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimension.sm.width,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Html(
                                  data: state.detailsEvent!.title,
                                ),
                              ),
                            ],
                          ),
                          Dimension.md.vertical,
                          ...blockTile(
                            context: context,
                            title: "Data e Horário",
                            items: <ItemTile>[
                              ItemTile(
                                title: "Data",
                                value: state.detailsEvent!.dateFormatted,
                                withDivider: true,
                              ),
                              ItemTile(
                                title: "Início",
                                value: state.detailsEvent!.start,
                                withDivider: true,
                              ),
                              if (state.detailsEvent!.end != '')
                                ItemTile(
                                  title: "Late Register",
                                  value: state.detailsEvent!.end!,
                                  withDivider: false,
                                )
                            ],
                            svgIcon:
                                '''<svg width="11" height="12" viewBox="0 0 11 12" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M2.75 0C2.96607 0 3.14286 0.16875 3.14286 0.375V1.5H7.85714V0.375C7.85714 0.16875 8.03393 0 8.25 0C8.46607 0 8.64286 0.16875 8.64286 0.375V1.5H9.42857C10.2953 1.5 11 2.17266 11 3V3.75V4.5V10.5C11 11.3273 10.2953 12 9.42857 12H1.57143C0.704687 12 0 11.3273 0 10.5V4.5V3.75V3C0 2.17266 0.704687 1.5 1.57143 1.5H2.35714V0.375C2.35714 0.16875 2.53393 0 2.75 0ZM10.2143 4.5H0.785714V10.5C0.785714 10.9148 1.13683 11.25 1.57143 11.25H9.42857C9.86317 11.25 10.2143 10.9148 10.2143 10.5V4.5ZM9.42857 2.25H1.57143C1.13683 2.25 0.785714 2.58516 0.785714 3V3.75H10.2143V3C10.2143 2.58516 9.86317 2.25 9.42857 2.25Z" fill="#166FED"/></svg>''',
                          ),
                          Dimension.md.vertical,
                          ...blockTile(
                            context: context,
                            title: "Valores",
                            items: <ItemTile>[
                              ItemTile(
                                title: "Buy-In",
                                value: state.detailsEvent!.buyin.toCurrency(),
                                withDivider: true,
                              ),
                              ItemTile(
                                title: "Rebuy",
                                value: state.detailsEvent!.rebuy.toCurrency(),
                                withDivider: true,
                              ),
                              ItemTile(
                                title: "Add-On",
                                value: state.detailsEvent!.addon.toCurrency(),
                                withDivider: false,
                              )
                            ],
                            svgIcon:
                                '''<svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M4.72266 3.375H7.27734L7.40156 3.45469C8.68594 4.27734 11.25 6.28828 11.25 9.75C11.25 10.5773 10.5773 11.25 9.75 11.25H2.25C1.42266 11.25 0.75 10.5773 0.75 9.75C0.75 6.28828 3.31406 4.27734 4.60078 3.45469L4.725 3.375H4.72266ZM7.02891 2.625H4.97109L4.81406 2.39531L3.67734 0.75H8.32266L7.18828 2.39531L7.03125 2.625H7.02891ZM3.57656 3.24609C2.1375 4.30547 0 6.40781 0 9.75C0 10.9922 1.00781 12 2.25 12H9.75C10.9922 12 12 10.9922 12 9.75C12 6.40781 9.8625 4.30547 8.42344 3.24609C8.19609 3.07969 7.9875 2.93672 7.80469 2.82188L8.23125 2.20312L9.14297 0.88125C9.39844 0.508594 9.13125 0 8.67891 0H3.32109C2.86875 0 2.60156 0.508594 2.85703 0.88125L3.76875 2.20312L4.19531 2.82188C4.01484 2.93672 3.80391 3.07969 3.57656 3.24609ZM6.375 5.0625C6.375 4.85625 6.20625 4.6875 6 4.6875C5.79375 4.6875 5.625 4.85625 5.625 5.0625V5.46797C5.43047 5.50313 5.23359 5.56875 5.06016 5.67188C4.75547 5.85234 4.5 6.16641 4.50234 6.62109C4.50469 7.05234 4.75547 7.32656 5.03438 7.49531C5.28047 7.64297 5.59219 7.73906 5.85 7.81641L5.8875 7.82812C6.18047 7.91719 6.40781 7.98984 6.56719 8.09063C6.70547 8.17734 6.74766 8.25469 6.74766 8.3625C6.75 8.51719 6.68438 8.61562 6.56484 8.69062C6.42891 8.775 6.225 8.82188 6.00937 8.81484C5.73281 8.80547 5.47734 8.71875 5.15859 8.61094C5.10469 8.59219 5.04844 8.57344 4.99219 8.55469C4.79531 8.48906 4.58437 8.59453 4.51875 8.79141C4.45312 8.98828 4.55859 9.19922 4.75547 9.26484C4.80234 9.28125 4.85156 9.29766 4.90078 9.31406C5.11641 9.38906 5.3625 9.47344 5.625 9.52266V9.9375C5.625 10.1438 5.79375 10.3125 6 10.3125C6.20625 10.3125 6.375 10.1438 6.375 9.9375V9.53672C6.57891 9.50391 6.78281 9.43594 6.96328 9.32344C7.275 9.12891 7.50703 8.80313 7.5 8.34844C7.49531 7.91484 7.25156 7.63125 6.96797 7.45312C6.71016 7.29141 6.38203 7.19062 6.11719 7.11094L6.10547 7.10859C5.81016 7.01953 5.58281 6.94922 5.42109 6.85312C5.28047 6.76875 5.25234 6.70312 5.25 6.61641C5.25 6.48984 5.30625 6.39609 5.43984 6.31641C5.58516 6.22969 5.79375 6.18281 5.99297 6.1875C6.22969 6.19219 6.48516 6.24141 6.74531 6.31172C6.94453 6.36562 7.15078 6.24609 7.20469 6.04688C7.25859 5.84766 7.13906 5.64141 6.93984 5.5875C6.76406 5.54062 6.57422 5.49609 6.375 5.46797V5.0625Z" fill="#127FF9"/></svg>''',
                          ),
                          Dimension.md.vertical,
                          ...blockTile(
                            context: context,
                            title: "Fichas",
                            items: <ItemTile>[
                              ItemTile(
                                title: "Fichas iniciais",
                                value: state.detailsEvent!.chipCount.toString(),
                                withDivider: false,
                              ),
                            ],
                            svgIcon:
                                '''<svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M3.75 1.875C3.75 1.93125 3.78047 2.03438 3.94453 2.175C3.97734 2.20312 4.0125 2.23125 4.05234 2.25938C3.69141 2.27344 3.33984 2.30391 3 2.35078V1.875C3 1.51641 3.20156 1.22578 3.45469 1.00781C3.71016 0.7875 4.05703 0.607031 4.45547 0.464062C5.25234 0.171094 6.32812 0 7.5 0C8.67188 0 9.74766 0.171094 10.5445 0.461719C10.9406 0.607031 11.2898 0.7875 11.5453 1.00547C11.7984 1.22578 12 1.51641 12 1.875V4.3125V6.98203C12 7.34297 11.8078 7.64297 11.5523 7.87266C11.2969 8.10234 10.95 8.29219 10.5516 8.44453C10.3078 8.53594 10.0406 8.61797 9.75234 8.68594V7.9125C9.94453 7.86094 10.1227 7.80469 10.2867 7.74375C10.6359 7.61016 10.8914 7.4625 11.0531 7.31719C11.2148 7.17188 11.2523 7.05703 11.2523 6.98438V5.43047C11.0484 5.56172 10.8117 5.67656 10.5516 5.775C10.3078 5.86641 10.0406 5.94844 9.75234 6.01641V5.24297C9.94453 5.19141 10.1227 5.13516 10.2867 5.07422C10.6359 4.94063 10.8914 4.79297 11.0531 4.64766C11.2148 4.50234 11.2523 4.3875 11.2523 4.31484V2.95547C11.0461 3.08203 10.807 3.19219 10.5469 3.28594C10.1414 3.43359 9.66562 3.55078 9.14062 3.62813C9.09609 3.58359 9.05156 3.53906 9.00703 3.49922C8.77031 3.28594 8.49844 3.11484 8.21484 2.97188C9.03047 2.91797 9.74766 2.775 10.2891 2.57812C10.6383 2.45156 10.8937 2.30859 11.0578 2.17031C11.2219 2.02969 11.2523 1.92656 11.2523 1.87031C11.2523 1.81406 11.2219 1.71094 11.0578 1.57031C10.8961 1.43203 10.6406 1.28906 10.2891 1.1625C9.59297 0.914062 8.60625 0.75 7.5 0.75C6.39375 0.75 5.40703 0.914062 4.71094 1.16719C4.36172 1.29375 4.10625 1.43672 3.94219 1.575C3.77812 1.71562 3.74766 1.81875 3.74766 1.875H3.75ZM0.75 4.875C0.75 4.93125 0.780469 5.03438 0.944531 5.175C1.10625 5.31328 1.36172 5.45625 1.71328 5.58281C2.40703 5.83594 3.39375 6 4.5 6C5.60625 6 6.59297 5.83594 7.28906 5.58281C7.63828 5.45625 7.89375 5.31328 8.05781 5.175C8.22187 5.03438 8.25234 4.93125 8.25234 4.875C8.25234 4.81875 8.22187 4.71562 8.05781 4.575C7.89609 4.43672 7.64062 4.29375 7.28906 4.16719C6.59297 3.91406 5.60625 3.75 4.5 3.75C3.39375 3.75 2.40703 3.91406 1.71094 4.16719C1.36172 4.29375 1.10625 4.43672 0.942188 4.575C0.778125 4.71562 0.747656 4.81875 0.747656 4.875H0.75ZM0 4.875C0 4.51641 0.201562 4.22578 0.454687 4.00781C0.710156 3.7875 1.05703 3.60703 1.45547 3.46406C2.25234 3.17109 3.32812 3 4.5 3C5.67188 3 6.74766 3.17109 7.54453 3.46172C7.94062 3.60703 8.28984 3.7875 8.54531 4.00547C8.80078 4.22344 9 4.51641 9 4.87266V7.31016V9.97969C9 10.3406 8.80781 10.6406 8.55234 10.8703C8.29688 11.1 7.95 11.2898 7.55156 11.4422C6.75234 11.7492 5.67188 11.9297 4.5 11.9297C3.32812 11.9297 2.24766 11.7492 1.45078 11.4445C1.05234 11.2922 0.705469 11.1023 0.45 10.8727C0.194531 10.643 0 10.343 0 9.98203V7.3125V4.875ZM8.25 5.95547C8.04375 6.08203 7.80469 6.19219 7.54453 6.28594C6.74766 6.57891 5.67188 6.75 4.5 6.75C3.32812 6.75 2.25234 6.57891 1.45547 6.28828C1.19531 6.19453 0.95625 6.08437 0.75 5.95781V7.3125C0.75 7.38516 0.7875 7.5 0.949219 7.64531C1.11094 7.79063 1.36641 7.94062 1.71562 8.07187C2.41172 8.33672 3.39375 8.50781 4.5 8.50781C5.60625 8.50781 6.58828 8.33672 7.28437 8.07187C7.63359 7.93828 7.88906 7.79063 8.05078 7.64531C8.2125 7.5 8.25 7.38516 8.25 7.3125V5.95547ZM0.75 9.98203C0.75 10.0547 0.7875 10.1695 0.949219 10.3148C1.11094 10.4602 1.36641 10.6102 1.71562 10.7414C2.41172 11.0062 3.39375 11.1797 4.5 11.1797C5.60625 11.1797 6.58828 11.0086 7.28437 10.7437C7.63359 10.6102 7.88906 10.4625 8.05078 10.3172C8.2125 10.1719 8.25 10.057 8.25 9.98438V8.43047C8.04609 8.56172 7.80938 8.67656 7.54922 8.775C6.75234 9.07969 5.67188 9.25781 4.5 9.25781C3.32812 9.25781 2.24766 9.07734 1.45078 8.77266C1.19297 8.67422 0.95625 8.55937 0.75 8.42813V9.97969V9.98203Z" fill="#166FED"/></svg>''',
                          )
                        ],
                      ),
                    ),
                    Dimension.md.vertical,
                    H2Accordion(
                      title: 'Informações do Torneio',
                      paddingTitle: EdgeInsets.symmetric(
                        horizontal: Dimension.sm.width,
                      ),
                      icon:
                          '''<svg width="19" height="18" viewBox="0 0 19 18" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12.6667 1.5625C13.2505 1.5625 13.7222 2.0373 13.7222 2.625V6.875H14.7778V2.625C14.7778 1.45293 13.8311 0.5 12.6667 0.5H10.5556H8.44444H6.33333C5.16892 0.5 4.22222 1.45293 4.22222 2.625V6.875H5.27778V2.625C5.27778 2.0373 5.74948 1.5625 6.33333 1.5625H7.38889V3.42188C7.38889 4.15566 7.97934 4.75 8.70833 4.75H10.2917C11.0207 4.75 11.6111 4.15566 11.6111 3.42188V1.5625H12.6667ZM8.44444 1.5625H10.5556V3.42188C10.5556 3.56797 10.4368 3.6875 10.2917 3.6875H8.70833C8.56319 3.6875 8.44444 3.56797 8.44444 3.42188V1.5625ZM10.8063 17.5H16.8889C18.0533 17.5 19 16.5471 19 15.375V10.0625C19 8.89043 18.0533 7.9375 16.8889 7.9375H14.7778H12.6667H10.8063C11.08 8.24297 11.2944 8.60488 11.433 9H11.6111V10.0592V10.0625V10.8594C11.6111 11.5932 12.2016 12.1875 12.9306 12.1875H14.5139C15.2429 12.1875 15.8333 11.5932 15.8333 10.8594V9H16.8889C17.4727 9 17.9444 9.4748 17.9444 10.0625V15.375C17.9444 15.9627 17.4727 16.4375 16.8889 16.4375H11.4297C11.2911 16.8326 11.0767 17.1945 10.803 17.5H10.8063ZM12.6667 9H14.7778V10.8594C14.7778 11.0055 14.659 11.125 14.5139 11.125H12.9306C12.7854 11.125 12.6667 11.0055 12.6667 10.8594V9ZM8.44444 9C9.0283 9 9.5 9.4748 9.5 10.0625V15.375C9.5 15.9627 9.0283 16.4375 8.44444 16.4375H2.11111C1.52726 16.4375 1.05556 15.9627 1.05556 15.375V10.0625C1.05556 9.4748 1.52726 9 2.11111 9H3.16667V10.8594C3.16667 11.5932 3.75712 12.1875 4.48611 12.1875H6.06944C6.79844 12.1875 7.38889 11.5932 7.38889 10.8594V9H8.44444ZM4.22222 10.8594V9H6.33333V10.8594C6.33333 11.0055 6.21458 11.125 6.06944 11.125H4.48611C4.34097 11.125 4.22222 11.0055 4.22222 10.8594ZM8.44444 7.9375H7.38889H6.33333H4.22222H3.16667H2.11111C0.946701 7.9375 0 8.89043 0 10.0625V15.375C0 16.5471 0.946701 17.5 2.11111 17.5H8.44444C9.60885 17.5 10.5556 16.5471 10.5556 15.375V10.0625C10.5556 8.89043 9.60885 7.9375 8.44444 7.9375Z" fill="#CECECE"/></svg>''',
                      content: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimension.sm.width,
                          vertical: Dimension.md.height,
                        ),
                        color: AppThemeBase.colorSecondary02,
                        child: Html(
                          data: state.detailsEvent!.description,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> blockTile({
    required BuildContext context,
    required String title,
    required String svgIcon,
    required List<ItemTile> items,
  }) {
    return [
      Row(
        children: [
          const Dimension(2.75).horizontal,
          SvgPicture.string(svgIcon),
          Dimension.xs.horizontal,
          Text(
            title,
            style: context.text.caption
                .copyWith(color: AppThemeBase.colorSecondary06),
          )
        ],
      ),
      Dimension.xs.vertical,
      Container(
        color: AppThemeBase.colorSecondary02,
        padding: EdgeInsets.symmetric(
          horizontal: const Dimension(2.75).width,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...items
                .map(
                  (item) => tile(
                    context: context,
                    title: item.title,
                    value: item.value,
                    withDivider: item.withDivider,
                  ),
                )
                .toList(),
          ],
        ),
      ),
    ];
  }

  Widget tile({
    required BuildContext context,
    required String title,
    required String value,
    required bool withDivider,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Dimension(1.5).vertical,
        Text(
          title,
          textAlign: TextAlign.start,
          style: context.text.calloutBold.copyWith(
            color: AppThemeBase.colorSecondaryDark,
          ),
        ),
        Text(
          value,
          textAlign: TextAlign.start,
          style: context.text.callout.copyWith(
            color: AppThemeBase.colorSecondary,
          ),
        ),
        const Dimension(1.5).vertical,
        if (withDivider)
          const Divider(
            color: AppThemeBase.colorPrimarySuperlight,
          )
      ],
    );
  }
}

class ItemTile {
  final String title;
  final String value;
  final bool withDivider;

  ItemTile({
    required this.title,
    required this.value,
    required this.withDivider,
  });
}
