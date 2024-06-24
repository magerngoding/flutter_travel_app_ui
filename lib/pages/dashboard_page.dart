// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app_ui/pages/dashboard_fragment/home_fragment.dart';

class DashboaradPage extends StatefulWidget {
  const DashboaradPage({super.key});

  @override
  State<DashboaradPage> createState() => _DashboaradPageState();
}

class _DashboaradPageState extends State<DashboaradPage> {
  int indexMenu = 0;
  final menu = [
    {
      'icon': 'assets/ic_home.png',
      'icon_active': 'assets/ic_home.png',
      'fragment': HomeFragment(),
    },
    {
      'icon': 'assets/ic_love_menu.png',
      'icon_active': 'assets/ic_love_menu.png',
      'fragment': Center(
        child: Text('Favorite'),
      ),
    },
    {
      'icon': 'assets/ic_cart.png',
      'icon_active': 'assets/ic_cart.png',
      'fragment': Text('Cart'),
    },
    {
      'icon': 'assets/ic_person.png',
      'icon_active': 'assets/ic_person.png',
      'fragment': Text('Person'),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: menu[indexMenu]['fragment'] as Widget,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 44),
        child: Row(
          children: List.generate(menu.length, (index) {
            Map item = menu[index];
            bool isActive = indexMenu == index;
            return Expanded(
              child: InkWell(
                onTap: () {
                  indexMenu = index;
                  setState(() {});
                },
                child: SizedBox(
                  height: 70,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Gap(20),
                      ImageIcon(
                        AssetImage(
                          item[isActive ? 'icon_active' : 'icon'],
                        ),
                        size: 24,
                        color: Color(isActive ? 0XFF1C9FE2 : 0XFFCBCBCB),
                      ),
                      if (isActive) Gap(6),
                      if (isActive)
                        Container(
                          height: 5,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Color(0XFF1C9FE2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
