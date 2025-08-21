import 'package:flutter/material.dart';
import 'package:shpoy_app/data/app_text_style.dart';

import '../data/colors.dart';

class PrimaryButton extends StatelessWidget {

  final double? height;
  final double? width;
  final double? radius;
  final Color? color;
  final Color? borderColor;
  final  String title;
  final TextStyle? textStyle;
  final Function()? onTap;

  const PrimaryButton ({
    super.key,
    this.height,
    this.width,
    this.radius,
    this.color,
    this.borderColor,
    required this.title,
    this.textStyle,
    required    this.onTap,
  }); // Note: No body {} here

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 80,
        width: width ?? MediaQuery.of(context).size.width - 60 ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 6),
          color: color ?? AppColors.appButtonColor, // Assuming AppColors is defined elsewhere
          border : Border.all(
            color: borderColor ?? Colors.transparent,
          ),
        ),
        child: Center(
          child: Text(
            title, // Removed the null check here as title is required
            style: textStyle ?? AppTextstyle.textStyle22WideW300,
          ),
        ),
      ),
    );
  }
}
