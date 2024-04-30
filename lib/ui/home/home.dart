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
  final iconColors = const [
    Color(0xff47A078),
    Color(0xff94D1BE),
    Color(0xff998FC7),
    Color(0xff000000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            ),
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
            Text(
              'Recent Transaction',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w800,
                fontSize: 22.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
