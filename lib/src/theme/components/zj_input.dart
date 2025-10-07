import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zain/zain.dart';

/// Base Input Component with dynamic fill color
/// Base Input Component with dynamic fill color
class ZjInput extends StatefulWidget {
  final String? label; // 👈 added label
  final String? hintText;
  final IconData? startIcon;
  final IconData? endIcon;
  final VoidCallback? onEndIconPressed;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const ZjInput({
    super.key,
    this.label,
    this.hintText,
    this.startIcon,
    this.endIcon,
    this.onEndIconPressed,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.controller,
    this.keyboardType,
    this.validator,
    this.inputFormatters,
  });

  @override
  State<ZjInput> createState() => _ZjInputState();
}

class _ZjInputState extends State<ZjInput> {
  late FocusNode _focusNode;
  late ValueNotifier<bool> _hasFocus;
  late ValueNotifier<bool> _hasText;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _hasFocus = ValueNotifier(false);
    _hasText = ValueNotifier(widget.controller?.text.isNotEmpty ?? false);

    _focusNode.addListener(() {
      _hasFocus.value = _focusNode.hasFocus;
    });

    widget.controller?.addListener(() {
      _hasText.value = widget.controller!.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _hasFocus.dispose();
    _hasText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _hasFocus,
      builder: (context, isFocused, _) {
        return ValueListenableBuilder<bool>(
          valueListenable: _hasText,
          builder: (context, hasText, _) {
            final theme = Theme.of(context);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.label != null) ...[
                  Text(
                    widget.label!,
                    style: TextStyle(
                      color: theme.inputDecorationTheme.labelStyle?.color,
                      fontSize: theme.inputDecorationTheme.labelStyle?.fontSize,
                    ),
                  ), // 👈 fixed label above
                  const SizedBox(height: 6),
                ],
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: isFocused
                        ? [
                            BoxShadow(
                              color: ZjColors.secondary12,
                              blurRadius: 0,
                              spreadRadius: 4,
                              offset: Offset.zero,
                            ),
                          ]
                        : [],
                  ),
                  child: TextFormField(
                    focusNode: _focusNode,
                    controller: widget.controller,
                    keyboardType: widget.keyboardType,
                    textInputAction: widget.textInputAction,
                    obscureText: widget.obscureText,
                    validator: widget.validator,
                    inputFormatters: widget.inputFormatters,
                    decoration: InputDecoration(
                      hintText: widget.hintText ?? "Enter something",
                      prefixIcon: widget.startIcon != null
                          ? Icon(widget.startIcon, size: 24.0)
                          : null,
                      suffixIcon: widget.endIcon != null
                          ? IconButton(
                              icon: Icon(widget.endIcon, size: 18.0),
                              onPressed: widget.onEndIconPressed,
                            )
                          : null,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

/// Email Input
class ZjEmailInput extends StatelessWidget {
  final TextEditingController? controller;

  const ZjEmailInput({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return ZjInput(
      controller: controller,
      hintText: "Email",
      startIcon: Icons.email,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      validator: ZjValidator.email,
    );
  }
}

/// Phone Input
class ZjPhoneInput extends StatelessWidget {
  final TextEditingController? controller;

  const ZjPhoneInput({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return ZjInput(
      controller: controller,
      hintText: "Phone number",
      startIcon: ZjIcons.email,
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.next,
      validator: ZjValidator.phone,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // only numbers allowed
        LengthLimitingTextInputFormatter(15), // max length
      ],
    );
  }
}

/// Password Input with toggle
// class ZjPasswordInput extends StatefulWidget {
//   final TextEditingController? controller;
//
//   const ZjPasswordInput({super.key, this.controller});
//
//   @override
//   State<ZjPasswordInput> createState() => _ZjPasswordInputState();
// }
//
// class _ZjPasswordInputState extends State<ZjPasswordInput> {
//   bool _obscureText = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return ZjInput(
//       controller: widget.controller,
//       hintText: "Password",
//       startIcon: Icons.lock,
//       obscureText: _obscureText,
//       endIcon: _obscureText ? Icons.visibility : Icons.visibility_off,
//       onEndIconPressed: () {
//         setState(() {
//           _obscureText = !_obscureText;
//         });
//       },
//       validator: ZjValidator.password,
//     );
//   }
// }
//

class ZjPasswordInput extends StatefulWidget {
  final TextEditingController? controller;

  const ZjPasswordInput({super.key, this.controller});

  @override
  State<ZjPasswordInput> createState() => _ZjPasswordInputState();
}

class _ZjPasswordInputState extends State<ZjPasswordInput> {
  final ValueNotifier<bool> _obscureText = ValueNotifier(true);

  @override
  void dispose() {
    _obscureText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _obscureText,
      builder: (context, obscure, _) {
        return ZjInput(
          controller: widget.controller,
          textInputAction: TextInputAction.next,
          hintText: "Password",
          startIcon: Icons.lock,
          obscureText: obscure,
          endIcon: obscure ? Icons.visibility : Icons.visibility_off,
          onEndIconPressed: () => _obscureText.value = !obscure,
          validator: ZjValidator.password,
        );
      },
    );
  }
}
