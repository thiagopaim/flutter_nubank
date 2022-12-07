import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/constants.dart';
import 'money_component.dart';

class TitleArrowComponent extends StatefulWidget {
  const TitleArrowComponent({
    super.key,
    required this.title,
    this.topIcon,
    this.subtitle,
    this.amount,
  });

  final String title;
  final String? subtitle;
  final IconData? topIcon;
  final double? amount;

  @override
  State<TitleArrowComponent> createState() => _TitleArrowComponentState();
}

class _TitleArrowComponentState extends State<TitleArrowComponent> {
  bool _isIconVisible = false;
  bool _isSubtitleVisible = false;

  @override
  void initState() {
    super.initState();

    if (widget.topIcon != null) {
      setState(() {
        _isIconVisible = true;
      });
    }

    if (widget.subtitle != null) {
      setState(() {
        setState(() {
          _isSubtitleVisible = true;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.all(0),
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        foregroundColor: Colors.black87,
        backgroundColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: _isIconVisible,
              child: Column(
                children: [
                  Icon(widget.topIcon),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Icon(
                  FontAwesomeIcons.chevronRight,
                  size: 14,
                  color: textLightColor,
                ),
              ],
            ),
            Visibility(
              visible: _isSubtitleVisible,
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Text(
                    widget.subtitle.toString(),
                    style: const TextStyle(
                      color: textLightColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            MoneyComponent(
              amount: widget.amount ?? 0.00,
            )
          ],
        ),
      ),
    );
  }
}
