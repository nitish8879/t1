import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utils/app_text_theme.dart';
import 'package:flutter_svg/svg.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final String prefixIconName;
  const AppTextField({
    super.key,
    required this.hintText,
    required this.prefixIconName,
  });

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32)),
      borderSide: BorderSide(color: Color(0xFFE2E8F0)),
    );
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextThemes.textTheme.titleSmall?.copyWith(
          color: const Color(0xFF64748B),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 24, right: 12),
          child: SvgPicture.asset(
            prefixIconName,
          ),
        ),
        prefixIconConstraints: const BoxConstraints(
          maxWidth: 70,
          maxHeight: 20,
        ),
        border: border,
        focusedBorder: border,
        enabledBorder: border,
      ),
    );
  }
}
