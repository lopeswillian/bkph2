import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/domain/entities/product_accordion_item_info.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/widgets/card_image.dart';
import 'package:apph2/theme/widgets/h2loading.dart';
import 'package:apph2/views/product/product_state.dart';
import 'package:apph2/views/product/product_viewmodel.dart';
import 'package:flutter/material.dart' hide View;
import 'package:url_launcher/url_launcher.dart';

import '../../theme/theme.dart';
import '../../theme/widgets/h2accordion.dart';

class ListProductPage extends StatefulWidget {
  const ListProductPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ListProductPageState createState() => _ListProductPageState();
}

class _ListProductPageState extends State<ListProductPage>
    with View<ProductViewModel> {
  bool isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    viewModel.getProducts();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
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
            ? const Center(
                child: H2Loading(),
              )
            : _buildPage(context, state);
      },
    );
  }

  Widget _buildPage(BuildContext context, ProductState state) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Dimension.xl.height,
        horizontal: Dimension.sm.width,
      ),
      child: Column(
        children: [
          ...state.accordionProducts
              .map(
                (accordion) => Column(
                  children: [
                    H2Accordion(
                      title: accordion.accordionTitle,
                      icon: accordion.accordionIconSvg,
                      subtitle: accordion.accordionSubTitle,
                      content: accordion.gridItemSpacing != 1
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ...accordion.accordionItems
                                    .map((accordionItem) {
                                  return getCardType(
                                    accordionItem,
                                    accordion.gridItemSpacing,
                                  );
                                }).toList()
                              ],
                            )
                          : Column(
                              children: [
                                ...accordion.accordionItems
                                    .map((accordionItem) {
                                  return getCardType(
                                    accordionItem,
                                    accordion.gridItemSpacing,
                                  );
                                }).toList()
                              ],
                            ),
                    ),
                    Dimension.md.vertical,
                  ],
                ),
              )
              .toList(),
        ],
      ),
    );
  }

  VoidCallback? actionCard({
    required ProductAccordionItemInfo accordionItem,
  }) {
    // ignore: unrelated_type_equality_checks
    if (accordionItem.itemId != '') {
      return () => Nav.pushNamed(
            BaseAppModuleRouting.listSchedule,
            arguments: int.parse(
              accordionItem.itemId,
            ),
          );
    }

    if (accordionItem.urlExternal != '') {
      return () async => !await launchUrl(
            Uri.parse(accordionItem.urlExternal),
            mode: LaunchMode.externalApplication,
          );
    }

    return null;
  }

  CardImage getCardType(
      ProductAccordionItemInfo accordionItem, int gridItemSpacing) {
    switch (gridItemSpacing) {
      case 1:
        return CardImage.large(
            backgroundImage: accordionItem.bgImage,
            action: actionCard(accordionItem: accordionItem));
      case 2:
        return CardImage.medium(
            backgroundImage: accordionItem.bgImage,
            action: actionCard(accordionItem: accordionItem));
      case 3:
        return CardImage.small(
            backgroundImage: accordionItem.bgImage,
            action: actionCard(accordionItem: accordionItem));
      default:
        return CardImage.large(
          backgroundImage: accordionItem.bgImage,
          action: () => actionCard(accordionItem: accordionItem),
        );
    }
  }
}
