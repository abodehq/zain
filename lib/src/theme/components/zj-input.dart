import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zain/zain.dart';


/// Base Input Component with dynamic fill color
class ZjInput extends StatefulWidget {
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

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _hasFocus = ValueNotifier(false);

    _focusNode.addListener(() {
      _hasFocus.value = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _hasFocus.dispose();
    super.dispose();
  }

  Color _getFillColor(bool isFocused) {
    if (isFocused) return ZjColors.third54; // Focused color
    if ((widget.controller?.text ?? '').isEmpty) return ZjColors.primary54; // Hint background
    return ZjColors.black54; // Default fill
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _hasFocus,
      builder: (context, isFocused, _) {
        return TextFormField(
          focusNode: _focusNode,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          obscureText: widget.obscureText,
          validator: widget.validator,
          inputFormatters: widget.inputFormatters,

          decoration: InputDecoration(
            hintText: "Enter something",  // ✅ Always shows when empty
            //labelText: "Email",
            filled: true,
            fillColor: _getFillColor(isFocused), // Dynamic only
            prefixIcon: widget.startIcon != null
                ? Icon(widget.startIcon, size: 24.0)
                : null,
            suffixIcon: widget.endIcon != null
                ? IconButton(
              icon: Icon(widget.endIcon, size: 18.0),
              onPressed: widget.onEndIconPressed,
            )
                : null,
            // Do not repeat hintStyle or borders; they come from ThemeData.inputDecorationTheme
          ),
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
        LengthLimitingTextInputFormatter(15),   // max length
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
