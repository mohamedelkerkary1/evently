import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme_manager/color_pallate.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Widget? prefixIcon;
  final void Function(String)? onChanged;
  final void Function(String)? onFiledSubmitted;
  final bool isPassword ;

  const CustomTextFormField({
    super.key,
    this.prefixIcon,
    this.hintText,
    this.controller,
    this.onChanged,
    this.onFiledSubmitted,
    this.isPassword = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscureText =true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onFiledSubmitted,
      obscureText: widget.isPassword ? obscureText : false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: ColorPallate.textFieldBorderColor,
        ),
        suffixIcon: widget.isPassword ? GestureDetector(
          onTap:(){
            setState(() {
              obscureText = !obscureText ;
            });
          },
          child: Icon(
            obscureText ? Icons.visibility_off : Icons.visibility,
            color: ColorPallate.textFieldBorderColor,
          ),
        ) : null,
        prefixIcon: widget.prefixIcon != null
            ? Padding(padding: const EdgeInsets.all(8.0), child: widget.prefixIcon)
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(
            color: ColorPallate.textFieldBorderColor,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(
            color: ColorPallate.textFieldBorderColor,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(
            color: ColorPallate.textFieldBorderColor,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(
            color: ColorPallate.textFieldBorderErrorColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
