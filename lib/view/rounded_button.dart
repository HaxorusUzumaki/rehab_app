import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  final String buttonTitle;
  final double widthRatio;
  final double? textFontSize;
  final double? height;
  final Widget leadingIcon;
  final Function() onPressed;
  const RoundedButton({
    Key? key,
    required this.onPressed,
    required this.buttonTitle,
    this.widthRatio = 1,
    this.height,
    this.textFontSize,
    this.leadingIcon = const SizedBox.shrink(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      // margin: const EdgeInsets.all(16),
      height: height,

      width: size.width / widthRatio,
      // margin: margin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
            alignment: Alignment.center,
            color: const Color(0xFF255FD6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                leadingIcon,
                Text(
                  buttonTitle,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: textFontSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
