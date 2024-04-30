import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({super.key});

  final iconLabes = const [
    '24 h',
    'Week',
    'Month',
    'Year',
    'Decade',
    'Century'
  ];

  final List<Map<String, dynamic>> transactionsHistory = const [
    {
      'name': 'Ahmad Mughal',
      'date': 'Transfer',
      'amount': '-\$53.00',
      'link': 'assets/icons/page_3_icons/dollar.svg'
    },
    {
      'name': 'Netflix',
      'date': 'Shopping',
      'amount': '-\$45.00',
      'link': 'assets/icons/page_3_icons/netflix.svg'
    },
    {
      'name': 'Foodpanda',
      'date': 'Food',
      'amount': '-\$20.00',
      'link': 'assets/icons/page_3_icons/food.svg'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 68.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 18.w,
                    ),
                  ),
                  Text(
                    "Analytics",
                    style: GoogleFonts.inter(
                        fontSize: 22.sp, fontWeight: FontWeight.w700),
                  ),
                  Container(
                    width: 64.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.r),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 5.r)
                      ],
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                          'assets/icons/page_3_icons/download.svg'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15.w),
                  for (int i = 0; i < 6; i++)
                    Container(
                      margin: EdgeInsets.only(right: 6.w),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 20.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.r),
                          color:
                              i == 1 ? Colors.white : const Color(0xff49A078),
                          border: Border.all(
                            color: const Color(0xff49A078),
                          )),
                      child: Text(
                        iconLabes[i],
                        style: GoogleFonts.inter(
                          color:
                              i == 1 ? const Color(0xff49A078) : Colors.white,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                ],
              ),
            ),
            SizedBox(height: 27.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Text(
                  'Your Expenses',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800,
                    fontSize: 22.sp,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            SvgPicture.asset('assets/icons/page_3_icons/statistics.svg'),
            SizedBox(height: 14.h),
            Row(
              children: [
                SizedBox(width: 15.w),
                Container(
                  width: 118.w,
                  height: 37.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff49A078),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Grocery',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        '\$300',
                        style: GoogleFonts.nunito(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  width: 118.w,
                  height: 37.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff998FC7),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Shopping',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        '\$250',
                        style: GoogleFonts.nunito(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  width: 118.w,
                  height: 37.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff000000),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Transfer',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        '\$150',
                        style: GoogleFonts.nunito(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 33.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Text(
                  '10 May, Fri',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800,
                    fontSize: 22.sp,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                    child: Row(
                      children: [
                        Container(
                          height: 40.h,
                          width: 40.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xffDBDBDB),
                              borderRadius: BorderRadius.circular(12.r)),
                          child: SvgPicture.asset(
                            transactionsHistory[i]['link'],
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transactionsHistory[i]['name'],
                              style: GoogleFonts.inter(
                                  fontSize: 12.sp, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              transactionsHistory[i]['date'],
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffB3B3B3),
                              ),
                            ),
                          ],
                        ),
                        const Expanded(child: SizedBox()),
                        Text(
                          transactionsHistory[i]['amount'],
                          style: GoogleFonts.inter(
                              fontSize: 12.sp, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
              ],
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
