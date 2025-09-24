import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:zain/zain.dart';



class ZjDivider extends StatelessWidget {
  final String? label;
  final double? height;
  final Color? color;
  final Color? dividerTextColor;

  ZjDivider({
    Key? key,
    this.label,
    this.height = 2.0,
    this.color,
    this.dividerTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).zjTheme;
    final Color _dividerTextColor = dividerTextColor ?? theme.dividerTextColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: (label ?? '').isEmpty
          ? [
              Flexible(
                child: Divider(
                  color: color,
                  height: height!,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                ),
              ),
            ]
          : [
              Flexible(
                child: Divider(
                  color: color,
                  height: height!,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: DividerText(label!,color: _dividerTextColor,),
              ),
              Flexible(
                child: Divider(
                  color: color,
                  height: height!,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                ),
              ),
            ],
    );
  }
}
