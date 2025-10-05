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
      appBar:  const ZjAppBar(
      title: 'Zain eShop',
      actions: [
            Icon(ZjIcons.menu),
            //SizedBox(width: 8),
            Icon(ZjIcons.z079),
            //SizedBox(width: 8),
          ],
        ),

      //AppBar(title: Text("hi all")) ,
      body: SafeArea(
        bottom: false, // Avoid double padding with bottomNavigationBar
        child: Padding(
          padding: const EdgeInsets.all(
            ZjComponentsUnits.screenWithActionButtonPadding,
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(minHeight: constraints.maxHeight),
                    child: Container(
                      //alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: theme.screenWithActionButtonBackgroundColor,
                        borderRadius: BorderRadius.circular(ZjUnits.rmd),
                        border: Border.all(
                          color: theme.screenWithActionButtonBorderColor,
                          width: 1,
                        ),
                      ),
                      child: child,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: actionButton != null
          ? SafeArea(
        top: false,
        child: Container(
          padding: const EdgeInsets.all(
            ZjComponentsUnits.screenWithActionButtonContainerPadding,
          ),
          decoration: BoxDecoration(
            color: theme.screenWithActionButtonContainerColor,
            border: Border(
              top: BorderSide(
                color: theme.screenWithActionButtonBorderColor,
                width: 1,
              ),
            ),
          ),
          child: actionButton!,
        ),
      )
          : null,
    );
  }
}
