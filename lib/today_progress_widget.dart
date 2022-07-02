import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressContainer extends StatelessWidget {
  const ProgressContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double progressPercent = 0.5;
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's Progress",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: Colors.grey[700],
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "${(progressPercent * 100).round()}%",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: const Color(0xFF255FD6),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              LinearPercentIndicator(
                barRadius: const Radius.circular(8),
                // width: 140.0,
                lineHeight: 9.0,
                percent: progressPercent,
                backgroundColor: const Color(0xFFC4C4C4),
                progressColor: const Color(0xFF255FD6),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ProgressData(
                    titleText: "Completed",
                    dataText: "2",
                    icon: Icon(
                      Icons.check_box,
                      color: Colors.green,
                    ),
                  ),
                  ProgressData(
                    titleText: "Pending",
                    dataText: "2",
                    icon: Icon(
                      Icons.next_plan,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProgressData extends StatelessWidget {
  final String titleText;
  final Widget icon;
  final String dataText;
  const ProgressData({
    Key? key,
    required this.titleText,
    required this.dataText,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 8),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: icon,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleText,
                style: GoogleFonts.montserrat(
                    color: Colors.grey[800], fontWeight: FontWeight.w400),
              ),
              Text(
                "$dataText Sessions",
                style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
