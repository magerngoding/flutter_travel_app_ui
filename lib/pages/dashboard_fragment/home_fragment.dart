// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:travel_app_ui/models/travel.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
          buildHeader(),
          Gap(36),
          buildCategory(),
          Gap(22),
          buildContent(),
          Gap(36),
          buildPopularDestination(),
        ],
      ),
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

  Widget buildContent() {
    return SizedBox(
      height: 143,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: listTravel.length,
        itemBuilder: (context, index) {
          Travel travel = listTravel[index];
          return Container(
            margin: EdgeInsets.only(right: 12),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    travel.image,
                    width: 222.0,
                    height: 143,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 12,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            travel.name,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 67.0,
                          ),
                          Text(
                            '\$${travel.price}',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Gap(4),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_sharp,
                            size: 10.0,
                            color: Colors.white,
                          ),
                          Text(
                            travel.location,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            '\\Person',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildPopularDestination() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Popular Destination',
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
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: listTravel.length,
            itemBuilder: (context, index) {
              Travel travel = listTravel[index];
              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      travel.imageDestination,
                      width: 95.0,
                      height: 84.0,
                    ),
                    const SizedBox(
                      width: 14.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          travel.destinationName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Color(0XFF2A2A2A),
                          ),
                        ),
                        Gap(6),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_sharp,
                              size: 10.0,
                              color: Color(0XFF1C9FE2),
                            ),
                            const SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              travel.destinationLocate,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF1C9FE2),
                              ),
                            ),
                          ],
                        ),
                        Gap(6),
                        Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          travel.destinationDesctiption,
                          style: TextStyle(
                            fontSize: 9.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF8D94A2),
                          ),
                        ),
                        Gap(6),
                        Row(
                          children: [
                            Text(
                              '\$${travel.price}',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF2A2A2A),
                              ),
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              '\\Person',
                              style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF8D94A2),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
