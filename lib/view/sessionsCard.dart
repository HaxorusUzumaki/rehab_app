import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rehab_app/view/rounded_button.dart';

class SessionsCard extends StatelessWidget {
  final int sessionNumber;
  const SessionsCard({
    Key? key,
    required this.sessionNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // margin: const EdgeInsets.all(16),
      height: 125,
      // width: size.width,

      // margin: margin,
      // width: size.width * 0.568,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(145, 158, 158, 158),
              width: 3,
            ),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          // padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 53),
          alignment: Alignment.topLeft,

          // color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13.0, vertical: 8),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Session $sessionNumber",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        RoundedButton(
                            buttonTitle: "Completed",
                            height: 20,
                            textFontSize: 10,
                            widthRatio: 4,
                            onPressed: () {})
                      ],
                    ),
                  ),
                  // LinearPercentIndicator(
                  //   barRadius: const Radius.circular(8),
                  //   // width: 140.0,
                  //   lineHeight: 9.0,
                  //   percent: progressPercent,
                  //   backgroundColor: const Color(0xFFC4C4C4),
                  //   progressColor: const Color(0xFF255FD6),
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13.0, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Performed At",
                          style: GoogleFonts.montserrat(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "8:12 AM",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset("assets/yoga.jpg"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
