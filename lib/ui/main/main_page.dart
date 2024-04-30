import 'package:flutter/material.dart';
import 'package:flutter_day_5/ui/add_card/add_card.dart';
import 'package:flutter_day_5/ui/analytics/analytics.dart';
import 'package:flutter_day_5/ui/home/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPage = 0;

  final pages = const [
    HomePage(),
    AddCardPage(),
    AnalyticsPage(),
  ];

  changePage(int index) => setState(() => _selectedPage = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: pages[_selectedPage]),

          /// My Custom Bottom Navigation Bar
          Container(
            width: double.infinity,
            height: 87.h,
            padding: EdgeInsets.symmetric(horizontal: 42.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 8.h,
                  offset: const Offset(1, 0),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => changePage(0),
                  child: SvgPicture.asset(
                    'assets/icons/bottom_nav_icons/home_${_selectedPage == 0 ? '' : 'un'}selected.svg',
                  ),
                ),
                GestureDetector(
                  onTap: () => changePage(1),
                  child: SvgPicture.asset(
                    'assets/icons/bottom_nav_icons/cards_${_selectedPage == 1 ? '' : 'un'}selected.svg',
                  ),
                ),
                GestureDetector(
                  onTap: () => changePage(2),
                  child: SvgPicture.asset(
                    'assets/icons/bottom_nav_icons/chart_${_selectedPage == 2 ? '' : 'un'}selected.svg',
                  ),
                ),
                SvgPicture.asset(
                    'assets/icons/bottom_nav_icons/settings_unselected.svg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
