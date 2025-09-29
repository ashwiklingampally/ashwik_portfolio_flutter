import 'package:ashwik_dev/ui/retry/part_four.dart';
import 'package:ashwik_dev/ui/retry/part_one.dart';
import 'package:ashwik_dev/ui/retry/part_three.dart';
import 'package:ashwik_dev/ui/retry/part_two.dart';
import 'package:ashwik_dev/ui/retry/part_two_old.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePageNormal extends StatelessWidget {
  const HomePageNormal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      endDrawer: Drawer(
        child:ListView(
          children: [
            ListTile(),
            ListTile(),
            ListTile(),ListTile(),ListTile(),ListTile(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.google, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.phone, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.github, color: Colors.white),
                ),
              ],
            ),
          ],
        )


      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              elevation: 0,
              backgroundColor: Colors.grey,
              forceElevated: false,
              floating: true,
              snap: false,
              expandedHeight: 100.h,
              pinned: true,
              //innerBoxIsScrolled = true means the appbar is normal and pinned
              flexibleSpace: innerBoxIsScrolled
                  ? Container(color: Colors.white)
                  : Container(color: Colors.grey),
              title: GestureDetector(
                onTap: (){},
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FaIcon(FontAwesomeIcons.a),
                    FaIcon(FontAwesomeIcons.s),
                    FaIcon(FontAwesomeIcons.h),
                    FaIcon(FontAwesomeIcons.w),
                    FaIcon(FontAwesomeIcons.i),
                    FaIcon(FontAwesomeIcons.k),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(Icons.menu_rounded),
                ),
              ],
            ),
          ];
        },
        body: ListView(
          padding: EdgeInsets.all(32.h),
          children: [
            Container(color: Colors.grey,padding: EdgeInsets.only(bottom: 50.h), child: PartOne(),),
            Container(padding: EdgeInsets.only(bottom: 50.h),child: PartTwo(),),
            Container(padding: EdgeInsets.only(bottom: 50.h),child: PartThree(),),
            Container(padding: EdgeInsets.only(bottom: 50.h),child: PartFour(),),
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: CustomScrollView(
  //       slivers: <Widget>[
  //         SliverAppBar(
  //           pinned: false,
  //           backgroundColor: Colors.black,
  //           expandedHeight: 100.h,
  //           flexibleSpace: FlexibleSpaceBar(
  //             background: Container(
  //               height: 30.h,
  //               width: 1000.w,
  //               color: Colors.grey,
  //             ),
  //           ),
  //         ),
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.green),
  //         ),
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.pink),
  //         ),
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.green),
  //         ),
  //
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.pink),
  //         ),
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.green),
  //         ),
  //
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.pink),
  //         ),
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.green),
  //         ),
  //
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.pink),
  //         ),
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.green),
  //         ),
  //
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.pink),
  //         ),
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.green),
  //         ),
  //
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.pink),
  //         ),
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.green),
  //         ),
  //
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.pink),
  //         ),
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.green),
  //         ),
  //
  //         SliverToBoxAdapter(
  //           child: Container(height: 100.h, width: 100.h, color: Colors.pink),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
