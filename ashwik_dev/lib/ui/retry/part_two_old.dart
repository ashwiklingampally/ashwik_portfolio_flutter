import 'package:ashwik_dev/ui/retry/data/experience_details.dart';
import 'package:ashwik_dev/ui/retry/widgets/style.dart';
import 'package:ashwik_dev/ui/retry/widgets/tile.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PartTwoOld extends StatelessWidget {
  const PartTwoOld({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: 'My\t'.toUpperCase(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.sp,
              fontFamily: GoogleFonts.dmSerifText().fontFamily,
            ),
            children: [
              TextSpan(
                text: 'Story'.toUpperCase(),
                style: TextStyle(
                  color: Colors.tealAccent,
                  fontSize: 30.sp,
                  fontFamily: GoogleFonts.dmSerifText().fontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        TimelineTile(
          isFirst: true,
          alignment: TimelineAlign.manual,
          lineXY: 0.3,
          animationLineThickness: 4,
          beforeLineStyle: LineStyle(color: Colors.black),
          indicatorStyle: IndicatorStyle(color: Colors.orange),
          startChild: Container(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Dec 2023 – Present",
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
          ),

          endChild: Container(
            color: Colors.amber,
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "ITISH Business Solutions",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
          ),
          // animationDuration: const Duration(seconds: 1),
          // enableAfterLineAnimation: true,
          // enableBeforeLineAnimation: true,
          // tweenEndColor: Colors.white,
          // tweenBeginColor: Colors.purple,
        ),

        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.3,
          animationLineThickness: 4,
          beforeLineStyle: LineStyle(color: Colors.black),
          afterLineStyle: LineStyle(color: Colors.black),
          indicatorStyle: IndicatorStyle(color: Colors.orange),
          startChild: Container(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            constraints: BoxConstraints(minHeight: 120.h),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Oct 2020 – Nov 2023",
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
          ),

          endChild: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Prodigital Worx private Limited",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // animationDuration: const Duration(seconds: 1),
          // enableAfterLineAnimation: true,
          // enableBeforeLineAnimation: true,
          // tweenEndColor: Colors.white,
          // tweenBeginColor: Colors.purple,
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.3,
          animationLineThickness: 4,
          beforeLineStyle: LineStyle(color: Colors.black),
          indicatorStyle: IndicatorStyle(color: Colors.orange),
          startChild: Container(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            constraints: BoxConstraints(minHeight: 120.h),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "May 2019 - Aug 2020",
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
          ),
          endChild: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Younify applications private limited",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // animationDuration: const Duration(seconds: 1),
          // enableAfterLineAnimation: true,
          // enableBeforeLineAnimation: true,
          // tweenEndColor: Colors.white,
          // tweenBeginColor: Colors.purple,
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.3,
          animationLineThickness: 4,
          beforeLineStyle: LineStyle(color: Colors.black),
          indicatorStyle: IndicatorStyle(color: Colors.orange),
          startChild: Container(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            constraints: BoxConstraints(minHeight: 120.h),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Sept 2016 – May 2019",
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
          ),
          endChild: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Atiivanns Info private limited",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // animationDuration: const Duration(seconds: 1),
          // enableAfterLineAnimation: true,
          // enableBeforeLineAnimation: true,
          // tweenEndColor: Colors.white,
          // tweenBeginColor: Colors.purple,
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.3,
          isLast: true,
          animationLineThickness: 4,
          beforeLineStyle: LineStyle(color: Colors.black),
          indicatorStyle: IndicatorStyle(color: Colors.orange),
          startChild: Container(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            constraints: BoxConstraints(minHeight: 120.h),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                " July 2012 - May 2016",
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
          ),
          endChild: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "B Tech, Vaagdevi college of Engineering",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("ECE"),
              ],
            ),
          ),
          // animationDuration: const Duration(seconds: 1),
          // enableAfterLineAnimation: true,
          // enableBeforeLineAnimation: true,
          // tweenEndColor: Colors.white,
          // tweenBeginColor: Colors.purple,
        ),
      ],
    );
  }
}
