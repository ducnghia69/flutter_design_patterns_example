import 'package:flutter/material.dart';

import '../../index.dart';

class CommonAnimationButton extends StatelessWidget {
  const CommonAnimationButton({
    required this.onTap,
    required this.title,
    this.height,
    this.textStyle,
    this.gradientColor,
    this.isDisable = false,
    super.key,
  });

  final String title;
  final Function onTap;
  final TextStyle? textStyle;
  final double? height;
  final List<Color>? gradientColor;
  final bool isDisable;

  @override
  Widget build(BuildContext context) {
    return CommonTabAnimationView(
      onTab: onTap,
      isDelayed: true,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        elevation: 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Container(
              alignment: Alignment.center,
              height: height ?? 55,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    cl.jasminePurple,
                    cl.greenHaze,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // CommonImage.asset(
                        //   assetPath: iconName,
                        //   width: 40,
                        //   fit: BoxFit.fitWidth,
                        // ),
                        // SizedBox(width: 12),
                        Text(
                          title,
                          style: textStyle ??
                              TextStyle(
                                fontSize: 24,
                                color: cl.white,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
