import 'package:ashwik_dev/ui/retry/data/experience_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom/timeline_list.dart';

class PartTwo extends StatelessWidget {
  const PartTwo({super.key});

  @override
  Widget build(BuildContext context) {
    var checkIcon = Container(
      width: 30.sp,
      height: 30.sp,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
      child: Icon(Icons.check, color: Colors.white, size: 30.sp),
    );
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
        Container(
          margin: EdgeInsets.only(top: 16.h),
          child: Timeline(
            physics: const NeverScrollableScrollPhysics(),
            properties: TimelineProperties(
              iconAlignment: MarkerIconAlignment.top,
              iconSize: 30.sp,
              timelinePosition: TimelinePosition.start,
              lineColor: Colors.black,
            ),
            children: [
              Marker(
                iconAlignment: MarkerIconAlignment.top,
                icon: checkIcon,
                child: SizedBox(
                  width: 1450.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "ITISH Business Solutions and Prodigitalworx Inc",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontSize: 20.sp,
                            ),
                          ),
                          Text(
                            "Oct 2020 to Present",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Text(
                        "MyT/OneApp - Toyota car application across regions (TME,TMNA, TMCA)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 20.sp,
                        ),
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) => Text(
                          "\u2022 ${myTExp[index]}",
                          style: TextStyle(fontSize: 20.sp),
                        ),
                        itemCount: myTExp.length,
                      ),
                      SizedBox(height: 10.h,),
                      Text(
                        "Global Telematics Portal (GTP) for Toyota North America & Australia",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 20.sp,
                        ),
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) =>
                            Text(
                              "\u2022 ${pdwExpGtp[index]}",
                              style: TextStyle(fontSize: 20.sp),
                            ),
                        itemCount: pdwExpGtp.length,
                      ),
                    ],
                  ),
                ),
                position: MarkerPosition.right,
              ),

              Marker(
                iconAlignment: MarkerIconAlignment.top,
                child: SizedBox(
                  width: 1450.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Younify applications private limited",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontSize: 20.sp,
                            ),
                          ),
                          Text(
                            "May 2019- Aug 2020",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) => Text(
                          "\u2022 ${younifyExp[index]}",
                          style: TextStyle(fontSize: 20.sp),
                        ),
                        itemCount: younifyExp.length,
                      ),
                    ],
                  ),
                ),
                icon: checkIcon,
                position: MarkerPosition.right,
              ),
              Marker(
                iconAlignment: MarkerIconAlignment.top,
                child: SizedBox(
                  width: 1450.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Atiivanns Info private limited",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontSize: 20.sp,
                            ),
                          ),
                          Text(
                            "Sept 2016 – May 2019",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
                            ),
                          ),

                        ],
                      ),
                      SizedBox(
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) => Text(
                            "\u2022 ${atiivannsExp[index]}",
                            style: TextStyle(fontSize: 20.sp),
                          ),
                          itemCount: atiivannsExp.length,
                        ),
                      ),
                    ],
                  ),
                ),
                icon: checkIcon,
                position: MarkerPosition.right,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
