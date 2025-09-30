import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

class ZjScreenWithActionButtonWrapper extends StatelessWidget {
  final Widget child;
  final Widget? actionButton; // optional action button

  const ZjScreenWithActionButtonWrapper({
    super.key,
    required this.child,
    this.actionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white, // default white background
      body: Padding(
        padding: const EdgeInsets.all(20.0), // default padding
        child: Container(
          //color: Colors.black,
          //margin: const EdgeInsets.all(20.0), // default margin
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white, // background
            borderRadius: BorderRadius.circular(8), // border-radius
            border: Border.all(
              color: Colors.red, // border
              width: 1,
            ),
          ),
          child: child,
        ),
      ),
      bottomNavigationBar: actionButton != null
          ? Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border(
                  top: BorderSide(
                    color: Colors.black.withOpacity(0.08), // border-top
                    width: 1,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                // align-items: flex-start
                children: [
                  actionButton!,
                  const SizedBox(height: 16), // gap
                ],
              ),
            )
          : null,
    );
  }
}
