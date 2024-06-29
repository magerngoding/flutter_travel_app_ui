// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'package:travel_app_ui/models/travel.dart';

class DetailPage extends StatelessWidget {
  final Travel travel;

  const DetailPage({
    Key? key,
    required this.travel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Gap(15),
          Stack(
            children: [
              buildHeader(),
              buildIconAppBar(),
              buildInfo(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildHeader() {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
      child: Image.asset(
        "assets/rinjani_bg.png",
        width: double.infinity,
        height: 408.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildIconAppBar() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                size: 18.0,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: Image.asset(
              "assets/ic_love.png",
              width: 18.0,
              height: 18.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInfo() {
    return Container(
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(top: 340),
      padding: EdgeInsets.only(top: 37, left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rinjani Mountain',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on_sharp,
                size: 10.0,
                color: Color(0XFF1C9FE2),
              ),
              const SizedBox(
                width: 4.0,
              ),
              Text(
                'Lombok, Indonesia',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF1C9FE2),
                ),
              ),
              Spacer(),
              Text(
                '\$48',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF2A2A2A),
                ),
              ),
              Text(
                '/Person',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF8D94A2),
                ),
              ),
            ],
          ),
          Gap(18),
          Text(
            'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
              color: Color(0XFF8D94A2),
            ),
          ),
          Gap(22),
          Row(
            children: [
              Text(
                'Preview',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              const Icon(
                Icons.star,
                size: 11.0,
                color: Color(0XFF1F8E545),
              ),
              const SizedBox(
                width: 4.0,
              ),
              Text(
                '4.8',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF8D94A2),
                ),
              ),
            ],
          ),
          Gap(18),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                travel.preview.length,
                (index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 12),
                    child: Image.asset(
                      travel.preview[index],
                      width: 90.0,
                      height: 90.0,
                    ),
                  );
                },
              ),
            ),
          ),
          Gap(20),
          Container(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF1C9FE2),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: const Text("Book Now"),
            ),
          ),
          Gap(20),
        ],
      ),
    );
  }
}
