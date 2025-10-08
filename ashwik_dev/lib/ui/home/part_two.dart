import 'package:ashwik_dev/ui/home/data/experience_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom/timeline_list.dart';

class PartTwo extends StatelessWidget {
  const PartTwo({super.key});

  @override
  Widget build(BuildContext context) {
    var checkIcon = Container(
      width: 30.sp,
      height: 30.sp,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      child: FaIcon(FontAwesomeIcons.circleDot, size: 30.sp),
    );
    return Wrap(
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: 'My\t'.toUpperCase(),
            style: Theme.of(context).textTheme.headlineSmall,
            children: [
              TextSpan(
                text: 'Story'.toUpperCase(),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 16.h,right: 24.h),
          child: Timeline(
            physics: const NeverScrollableScrollPhysics(),
            properties: TimelineProperties(
              iconAlignment: MarkerIconAlignment.top,
              iconSize: 30.sp,
              timelinePosition: TimelinePosition.start,
            ),
            children: [
              Marker(
                iconAlignment: MarkerIconAlignment.top,
                icon: checkIcon,
                child: SizedBox(
                  width: 1400.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ITISH Business Solutions and Prodigitalworx Inc",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      SizedBox(height: 10.h,),
                      Text(
                        "Project: MyT/OneApp - Toyota car application across regions (TME,TMNA, TMCA)",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) => Text(
                          "\u2022 ${myTExp[index]}",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        itemCount: myTExp.length,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "Project: Global Telematics Portal (GTP) for Toyota North America & Australia",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) => Text(
                          "\u2022 ${pdwExpGtp[index]}",
                          style: Theme.of(context).textTheme.labelMedium,
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
                  width: 1400.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Younify applications private limited",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) => Text(
                          "\u2022 ${younifyExp[index]}",
                          style: Theme.of(context).textTheme.labelMedium,
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
                  width: 1400.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Atiivanns Info private limited",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      SizedBox(
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) =>
                              Text(
                                "\u2022 ${atiivannsExp[index]}",
                                style: Theme.of(context).textTheme.labelMedium,
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
