import 'package:flutter/material.dart';
import 'package:qr_scanner/shared/constants/app_colors.dart';

class AppCustomTextFormField extends StatelessWidget {
  const AppCustomTextFormField(
      {Key? key,
      required this.controller,
      required this.validate,
      required this.inputType,
      required this.hint,
      required this.prefixIcon,
        this.obscureText,
      this.suffixIcon,
      this.onSuffixIconPressed,
      })
      : super(key: key);

  final TextEditingController controller;
  final TextInputType inputType;
  final String hint;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String? Function(String?)? validate;
  final VoidCallback? onSuffixIconPressed;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      width: double.infinity,
      height: 65,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.appGrey,
      ),
      child: TextFormField(
        controller: controller,
        validator: validate,
        keyboardType: inputType,
        obscureText: obscureText ?? false,
        //cursorColor: AppColors.appLightGrey,
        //style: const TextStyle(color: AppColors.appLightGrey),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
         // hintStyle: const TextStyle(color: AppColors.appLightGrey),
          errorBorder: InputBorder.none,
          prefixIcon: Icon(
            prefixIcon,
            //color: AppColors.appLightGrey,
          ),
          suffixIcon: IconButton(
              onPressed: onSuffixIconPressed,
              icon: Icon(
                suffixIcon,
                //color: AppColors.appLightGrey,
              )),
        ),
      ),
    );
  }
}
