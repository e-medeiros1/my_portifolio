// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/core/styles/text_styles.dart';

class MyOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget? image;
  final String text;

  const MyOutlinedButton({
    Key? key,
    required this.onPressed,
    this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.percentHeight(.25),
      child: OutlinedButton(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
            side: WidgetStatePropertyAll(
              BorderSide(color: context.colors.light),
            ),
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(
                vertical: context.percentHeight(.015),
                horizontal: context.percentHeight(.02),
              ),
            ),
            overlayColor: WidgetStatePropertyAll(context.colors.light.withOpacity(.1)),
          ),
          onPressed: onPressed,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                image ??
                    Icon(Icons.arrow_forward_ios, color: context.colors.light, size: 20),
                const SizedBox(width: 10),
                Text(
                  text,
                  style: context.textStyles.textRegular
                      .copyWith(color: context.colors.light, fontSize: 18),
                ),
              ],
            ),
          )),
    );
  }
}
