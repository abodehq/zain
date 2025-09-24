import 'dart:ffi';

import 'package:flutter/material.dart';
import '../core/zj-colors.dart';
import '../core/zj-units.dart';
import 'zj-text.dart';

class ZjDivider extends StatelessWidget {
  final String? label;
  final double? height;

  ZjDivider({Key? key, this.label,this.height = 2.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: (label ?? '').isEmpty
          ? [
              Flexible(
                child: Divider(height:height!, thickness: 1, indent: 0, endIndent: 0),
              ),
            ]
          : [
              Flexible(
                child: Divider(height:height!,thickness: 1, indent: 0, endIndent: 0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(label!),
              ),
              Flexible(
                child: Divider(height:height!,thickness: 1, indent: 0, endIndent: 0),
              ),
            ],
    );
  }
}
