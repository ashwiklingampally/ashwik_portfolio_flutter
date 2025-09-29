import 'package:ashwik_dev/ui/home/about_me_page.dart';
import 'package:ashwik_dev/ui/home/details_slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(background: DetailsSlide()),
            expandedHeight: 1050.h/2,
            backgroundColor: Colors.black,
            actions: [
              Container(
                padding: EdgeInsets.only(right: 20.w),
                child: OutlinedButton.icon(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.w),
                      ),
                    ),
                  ),
                  iconAlignment: IconAlignment.start,
                  onPressed: () {},
                  icon: Icon(Icons.get_app, size: 18, color: Colors.white),
                  label: Text(
                    "Download CV",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(100.w),
              child: AboutMePage(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(height: 1050.h, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
