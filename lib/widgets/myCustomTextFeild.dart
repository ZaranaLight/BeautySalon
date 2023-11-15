import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/colors.dart';

class MyTextField extends StatefulWidget {
  final String? lableText, hintText;
  final String? titleText;
  final int? maxLines;
  final bool? isPassword;

  final bool? selectedPass;
  final Function? onTap;
  final ValueChanged<String>? onChanged;
  final Function? onSubmit;
  final bool? isEnabled;
  final TextCapitalization? capitalization;
  final Color? fillColor;
  final bool? autoFocus;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  final TextInputType? textInputType;

  MyTextField({
    super.key,
    this.lableText,
    this.hintText,
    this.titleText,
    this.maxLines,
    this.isPassword = false,
    this.onTap,
    this.onChanged,
    this.onSubmit,
    this.isEnabled,
    this.capitalization,
    this.fillColor,
    this.autoFocus,
    this.controller,
    this.focusNode,
    this.nextFocus,
    this.selectedPass = false,
    this.textInputType,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool? obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      height: Get.height * 0.065,
      margin: EdgeInsets.symmetric(vertical: Get.height * 0.01),
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
      decoration: BoxDecoration(
        color: ColorssA.appbackgroundcolor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: ColorssA.appColor.withOpacity(0.5) ,
        ),
      ),
      child: Center(
        child: TextField(
          keyboardType: widget.textInputType ?? TextInputType.text,
          maxLines: widget.maxLines,
          controller: widget.controller,
          focusNode: widget.focusNode,

          obscureText: widget.isPassword! ? obscureText! : false,
          decoration: InputDecoration(
            hintText: widget.hintText,
            suffixIcon: widget.selectedPass == true
                ? IconButton(
              icon: Icon(
                obscureText == false
                    ? Icons.remove_red_eye
                    : Icons.remove_red_eye_outlined,
                color: obscureText == false ? Colors.black : Colors.grey,
                size: 15,
              ),
              onPressed: () {
                setState(() {
                  obscureText = !obscureText!;
                });
              },
            )
                : SizedBox(),
            border: InputBorder.none,
            hintStyle: TextStyle(
                color: Theme.of(context).hintColor.withOpacity(0.3),
                fontWeight: FontWeight.w400,
                fontSize: 14,height: 1.9),
          ),
          onTap: () => widget.onTap!(),
          onSubmitted: (text) => widget.nextFocus != null
              ? FocusScope.of(context).requestFocus(widget.nextFocus)
              : widget.onSubmit != null
              ? widget.onSubmit!(text)
              : null,
          onChanged: widget.onChanged!,
        ),
      ),
    );
  }
}
