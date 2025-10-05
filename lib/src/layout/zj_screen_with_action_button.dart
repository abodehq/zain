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

    final theme = Theme.of(context).zjTheme;

    return Scaffold(
      // backgroundColor: Colors.white, // default white background
      body: Padding(
        padding: const EdgeInsets.all(ZjComponentsUnits.screenWithActionButtonPadding), // default padding
        child: Container(
          //color: Colors.black,
          //margin: const EdgeInsets.all(20.0), // default margin
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: theme.screenWithActionButtonBackgroundColor, // background
            borderRadius: BorderRadius.circular(ZjUnits.rmd), // border-radius
            border: Border.all(
              color: theme.screenWithActionButtonBorderColor, // border
              width: 1,
            ),
          ),
          child: child,
        ),
      ),
      bottomNavigationBar: actionButton != null
          ? Container(
              padding: const EdgeInsets.all(ZjComponentsUnits.screenWithActionButtonContainerPadding),
              decoration: BoxDecoration(
                color: theme.screenWithActionButtonContainerColor,
                border: Border(
                  top: BorderSide(
                    color: theme.screenWithActionButtonBorderColor, // border-top
                    width: 1,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  actionButton!,
                  //const SizedBox(height: ZjComponentsUnits.screenWithActionButtonContainerGap), // gap
                ],
              ),
            )
          : null,
    );
  }
}
