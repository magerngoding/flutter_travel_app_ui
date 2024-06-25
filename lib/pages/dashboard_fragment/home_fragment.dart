// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 25),
      children: [
        Gap(20),
        buildHeader(),
        Gap(36),
        buildCategory(),
        Gap(22),
        // buildContent(),
        // buildPopularDestination(),
      ],
    );
  }

  Widget buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            color: Color(0XFFF6F8FA),
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          child: Image.asset(
            "assets/ic_menu_left.png",
            width: 18.0,
            height: 18.0,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Current Location',
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF8D94A2)),
            ),
            Gap(6),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: 14.0,
                  color: Color(0XFF1C9FE2),
                ),
                Gap(2),
                Text(
                  'Denpasar, Bali',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: Color(
                      0XFF2A2A2A,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Image.asset(
          "assets/profile.png",
          width: 36.0,
          height: 36.0,
        ),
      ],
    );
  }

  Widget buildCategory() {
    final categories = [
      {
        'title': 'Mountain',
        'icon': 'assets/ic_mountain.png',
      },
      {
        'title': 'Waterfall',
        'icon': 'assets/ic_waterfall.png',
      },
      {
        'title': 'River',
        'icon': 'assets/ic_river.png',
      },
      {
        'title': 'Forest',
        'icon': 'assets/ic_forest.png',
      },
    ];
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Category',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Color(0XFF2A2A2A),
              ),
            ),
            Spacer(),
            Text(
              'View all',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: Color(0XFF1C9FE2),
              ),
            ),
            Gap(4),
            Image.asset(
              "assets/ic_arrow_right.png",
              width: 8.0,
              height: 8.0,
            ),
          ],
        ),
        Gap(22),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categories.map(
              (e) {
                return Row(
                  children: [
                    Container(
                      height: 38,
                      width: 103,
                      decoration: BoxDecoration(
                        color: Color(0XFFF6F8FA),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            e['icon']!,
                            width: 17,
                            height: 20,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            e['title']!,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF8D94A2),
                            ),
                          )
                        ],
                      ),
                    ),
                    Gap(12),
                  ],
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
