import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class H2Accordion extends StatefulWidget {
  final String title;
  final String? subtitle;
  final Widget content;
  final String? icon;
  final EdgeInsets? paddingTitle;
  final bool? expanded;

  H2Accordion({
    required this.title,
    this.subtitle,
    required this.content,
    this.icon,
    this.paddingTitle,
    this.expanded = true,
  });

  @override
  _H2AccordionState createState() => _H2AccordionState();
}

class _H2AccordionState extends State<H2Accordion> {
  bool expanded = true;
  toggleAccordion() {
    setState(() {
      expanded = !expanded;
    });
  }

  @override
  void initState() {
    super.initState();
    expanded = widget.expanded ?? true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: widget.paddingTitle ?? EdgeInsets.zero,
          child: GestureDetector(
            onTap: toggleAccordion,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      if (widget.icon != null)
                        Padding(
                          padding: EdgeInsets.only(
                            right: const Dimension(1.25).width,
                          ),
                          child: SvgPicture.string(
                            widget.icon!,
                            width: const Dimension(2.375).width,
                          ),
                        ),
                      Column(
                        children: [
                          Text(
                            widget.title,
                            style: context.text.callout,
                          ),
                        ],
                      ),
                      const Dimension(1.25).horizontal,
                      const Expanded(
                        child: Divider(
                          color: AppThemeBase
                              .colorSecondary04, // Cor da linha horizontal
                          thickness: 1,
                        ),
                      ),
                      const Dimension(1.25).horizontal,
                    ],
                  ),
                ),
                IconButton(
                  onPressed: toggleAccordion,
                  icon: Icon(
                    expanded ? Icons.expand_less : Icons.expand_more,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        Dimension.md.vertical,
        expanded ? widget.content : const SizedBox.shrink(),
      ],
    );
  }
}
