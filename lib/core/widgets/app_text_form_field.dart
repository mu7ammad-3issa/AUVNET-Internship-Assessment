import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawel/core/theming/app_styles.dart';
import 'package:nawel/core/theming/colors_manager.dart';

class AuthTextFormField extends StatefulWidget {
  const AuthTextFormField({
    super.key,
    required this.icon,
    required this.isPassword,
    required this.validator,
    this.onSaved,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType,
    this.controller,
    this.onChanged,
    this.focusNode,
    this.textInputAction,
    this.hint,
  });

  final String? hint;
  final Widget icon;
  final bool isPassword;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final void Function(String?)? onSaved;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;

  @override
  State<AuthTextFormField> createState() => _AuthTextFormFieldState();
}

class _AuthTextFormFieldState extends State<AuthTextFormField> {
  var isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      textInputAction: widget.textInputAction,
      autofillHints: widget.keyboardType == TextInputType.emailAddress
          ? [AutofillHints.email]
          : widget.isPassword
              ? [AutofillHints.password]
              : null,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.h),
        hintText: widget.hint,
        hintStyle: AppStyles.mulishLight14Grey,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: ColorsManager.lightGray.withOpacity(0.20),
        errorStyle: AppStyles.mulishLight14Grey.copyWith(
          color: Colors.red,
        ),
        prefixIcon: Padding(
          padding:
              EdgeInsets.only(left: 16.w, top: 16.h, bottom: 16.h, right: 8.w),
          child: widget.icon,
        ),
        prefixIconConstraints: BoxConstraints(minHeight: 24.h, minWidth: 24.w),
      ),
      style: AppStyles.mulishLight14Grey,
      validator: widget.validator,
      obscureText: widget.isPassword && !isPasswordVisible,
      onSaved: widget.onSaved,
      onChanged: widget.onChanged,
      textCapitalization: widget.textCapitalization,
      keyboardType: widget.keyboardType,
    );
  }
}
