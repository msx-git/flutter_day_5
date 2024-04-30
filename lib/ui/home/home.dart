import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final iconLabel = const [
    'Send',
    'Receive',
    'Swap',
    'Deposit',
  ];

  final List<Map<String, dynamic>> transactions = const [
    {
      'name': 'From Ahmad Mughal',
      'date': '20 Jan 2024 at 10:00 PM',
      'amount': '+\$3,456.00'
    },
    {
      'name': 'To Sara Gujjar',
      'date': '20 Dec 2022 at 17:00 PM',
      'amount': '-\$1,325.00'
    },
    {
      'name': 'To Mailchimp',
      'date': '15 March 2020 at 08:00 PM',
      'amount': '-\$500.00'
    }
  ];
  final iconColors = const [
    Color(0xff47A078),
    Color(0xff94D1BE),
    Color(0xff998FC7),
    Color(0xff000000),
  ];

  @override
  Widget build(BuildContext context) {
    int option = Random().nextInt(2);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 72.h),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/user.svg',
                    height: 50.h,
                    width: 50.w,
                  ),
                  SizedBox(width: 7.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SHAHZAIB",
                        style: GoogleFonts.inriaSans(
                            fontWeight: FontWeight.w700, fontSize: 22.sp),
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        "Good Morning!",
                        style: GoogleFonts.inriaSans(
                          fontWeight: FontWeight.w300,
                          fontSize: 11.sp,
                          color: const Color(0xff717171),
                        ),
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  SvgPicture.asset('assets/icons/bell.svg')
                ],
              ),

              /// Circle Container
              Container(
                height: 200.h,
                width: 200.w,
                margin: EdgeInsets.only(top: 51.h, bottom: 46.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff49A078).withOpacity(0.7),
                      blurRadius: 23.r,
                      spreadRadius: 3.r,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your Total Balance",
                      style: GoogleFonts.inriaSans(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff696969),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "\$7,899.00",
                      style: GoogleFonts.inriaSans(
                        color: const Color(0xff49A078),
                        fontWeight: FontWeight.w700,
                        fontSize: 31.sp,
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Hide',
                          style: GoogleFonts.inriaSans(
                            color: const Color(0xff696969),
                            fontWeight: FontWeight.w700,
                            fontSize: 13.sp,
                          ),
                        ),
                        SizedBox(width: 6.w),
                        SvgPicture.asset('assets/icons/hidden.svg'),
                      ],
                    ),
                  ],
                ),
              ),

              /// Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < 4; i++)
                    Container(
                      padding: EdgeInsets.only(left: 5.w),
                      width: 83.w,
                      height: 41.h,
                      decoration: BoxDecoration(
                          color: iconColors[i],
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                              'assets/icons/${iconLabel[i].toLowerCase()}.svg'),
                          SizedBox(width: 3.w),
                          Text(
                            iconLabel[i],
                            style: GoogleFonts.inriaSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              SizedBox(height: 49.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent Transaction',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800,
                    fontSize: 22.sp,
                  ),
                ),
              ),
              SizedBox(height: 18.h),

              /// Recent Transactions List
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < 3; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: iconColors[i],
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/${i == 0 ? 'from' : 'to'}.svg',
                            ),
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                transactions[i]['name'],
                                style: GoogleFonts.inriaSans(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                transactions[i]['date'],
                                style: GoogleFonts.inriaSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffAAAAAA),
                                ),
                              ),
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                          Text(
                            transactions[i]['amount'],
                            style: GoogleFonts.inriaSans(
                                fontSize: 18.sp, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
