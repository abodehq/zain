import 'package:flutter/material.dart';
import '../core/zj-colors.dart';
import '../core/zj-units.dart';
import 'zj-text.dart';


class ZjDivider extends StatelessWidget {

  final String label;

  const ZjDivider({
    Key? key,
    this.label = "Button",

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color:Colors.red,thickness: .5,indent: 5, endIndent: 5)),
        Text('OR'),
        Flexible(child: Divider(color:Colors.red,thickness: .5,indent: 5, endIndent: 5))
      ],
    );
  }
}

