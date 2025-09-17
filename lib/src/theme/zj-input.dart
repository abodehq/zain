import 'package:flutter/material.dart';
import 'zj-colors.dart';
import 'zj-text.dart';
import 'zj-units.dart';

class ZjInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final IconData? startIcon;
  final IconData? endIcon;
  final VoidCallback? onEndIconPressed;
  final bool obscureText;
  final TextInputType keyboardType;

  const ZjInput({
    Key? key,
    this.controller,
    this.hintText,
    this.startIcon,
    this.endIcon,
    this.onEndIconPressed,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: ZjUnits.unit10,
        horizontal: ZjUnits.unit12,
      ),
      decoration: BoxDecoration(
        color: ZjColors.secondary2.withOpacity(0.02), // rgba(35, 174, 183, 0.02)
        borderRadius: BorderRadius.circular(ZjUnits.rmd), // 8px
        border: Border.all(color: Colors.black.withOpacity(0.08), width: 1),
      ),
      child: Row(
        children: [
          /// Start Icon
          if (startIcon != null) ...[
            Icon(startIcon, size: ZjUnits.unit24, color: Colors.black),
            const SizedBox(width: ZjUnits.unit8),
          ],

          /// TextField
          Expanded(
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              keyboardType: keyboardType,
              style: ZjTextVars.txt14.copyWith(
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.70),
              ),
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: ZjTextVars.txt14.copyWith(
                  color: Colors.black.withOpacity(0.40),
                ),
              ),
            ),
          ),

          /// End Icon
          if (endIcon != null) ...[
            const SizedBox(width: ZjUnits.unit8),
            GestureDetector(
              onTap: onEndIconPressed,
              child: Icon(
                endIcon,
                size: ZjUnits.unit18,
                color: Colors.black,
              ),
            ),
          ],
        ],
      ),
    );
  }
}




class ZjPhoneInput extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const ZjPhoneInput({
    Key? key,
    required this.controller,
    this.hintText = "Enter phone number",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZjInput(
      controller: controller,
      hintText: hintText,
      startIcon: Icons.phone,
      keyboardType: TextInputType.phone,
    );
  }
}


class ZjPhoneInput extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const ZjPhoneInput({
    Key? key,
    required this.controller,
    this.hintText = "Enter phone number",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZjInput(
      controller: controller,
      hintText: hintText,
      startIcon: Icons.phone,
      keyboardType: TextInputType.phone,
    );
  }
}


class ZjPasswordInput extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const ZjPasswordInput({
    Key? key,
    required this.controller,
    this.hintText = "Enter password",
  }) : super(key: key);

  @override
  State<ZjPasswordInput> createState() => _ZjPasswordInputState();
}

class _ZjPasswordInputState extends State<ZjPasswordInput> {
  bool _obscureText = true;

  void _toggleObscure() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ZjInput(
      controller: widget.controller,
      hintText: widget.hintText,
      startIcon: Icons.lock,
      obscureText: _obscureText,
      endIcon: _obscureText ? Icons.visibility : Icons.visibility_off,
      onEndIconPressed: _toggleObscure,
    );
  }
}
