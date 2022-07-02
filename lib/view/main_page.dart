import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehab_app/today_progress_widget.dart';
import 'package:rehab_app/view/rounded_button.dart';
import 'package:rehab_app/view/sessionsCard.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  final int sessionsCompeted = 2;
  final int itemCount = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, top: 35),
                      child: Text(
                        "Good Morning \nJane",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700, fontSize: 40),
                      ),
                    ),
                    // const Expanded(child: Spacer()),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.0),
                  child: ProgressContainer(),
                ),
                Flexible(
                  child: ListView.builder(
                      itemCount: itemCount,
                      itemBuilder: (context, index) {
                        return TimelineTile(
                          endChild: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 20, right: 35.0),
                            child: SessionsCard(
                              sessionNumber: index + 1,
                            ),
                          ),
                          isLast: index == (itemCount - 1),
                          afterLineStyle: LineStyle(
                              color: !(index > (sessionsCompeted - 1))
                                  ? const Color(0xFF255FD6)
                                  : Colors.grey),
                          beforeLineStyle: LineStyle(
                              color: !(index > (sessionsCompeted - 1))
                                  ? const Color(0xFF255FD6)
                                  : Colors.grey),
                          alignment: TimelineAlign.manual,
                          isFirst: index == 0,
                          indicatorStyle: IndicatorStyle(
                            width: 25,
                            color: index > (sessionsCompeted - 1)
                                ? Colors.grey
                                : const Color(0xFF255FD6),
                            // padding: const EdgeInsets.all(8),
                            iconStyle: IconStyle(
                              color: Colors.white,
                              iconData: index > (sessionsCompeted - 1)
                                  ? Icons.circle
                                  : Icons.check,
                            ),
                          ),
                          lineXY: 0.12,
                          // startChild: Container(
                          //   constraints: const BoxConstraints(
                          //     minHeight: 120,
                          //   ),
                          // ),
                        );
                      }),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RoundedButton(
                leadingIcon: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 33,
                    )),
                buttonTitle: "Start Session",
                onPressed: () {},
                height: 50,
                widthRatio: 1.18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
