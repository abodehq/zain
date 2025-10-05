import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

import 'package:flutter/material.dart';

class ZjAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;
  final List<Widget>? actions;
  final bool? showLeadingIcon;

  const ZjAppBar({
    super.key,
    this.showLeadingIcon,
    required this.title,
    this.onBack,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      title: Text(title, style: theme.appBarTheme.titleTextStyle),

      leading: (showLeadingIcon ?? true)
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: onBack ?? () => Navigator.of(context).maybePop(),
            )
          : null,
      actions: actions != null && actions!.isNotEmpty
          ? List<Widget>.generate(
              actions!.length * 2 - 1,
              (index) => index.isEven
                  ? actions![index ~/ 2]
                  : const SizedBox(width: 12),
            )
          : null,
      flexibleSpace: Container(
        decoration: const BoxDecoration(gradient: ZjColors.gradientPrimary),
      ),
    );
  }

  // @override
  // Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Size get preferredSize => const Size.fromHeight(64);

  // @override
  // Size get preferredSize {
  //   final theme = ThemeData(); // You can’t access context here directly.
  //   print(theme.appBarTheme.toolbarHeight);
  //   return Size.fromHeight(theme.appBarTheme.toolbarHeight ?? kToolbarHeight);
  // }
}
