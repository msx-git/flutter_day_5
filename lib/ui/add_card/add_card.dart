import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCardPage extends StatelessWidget {
  const AddCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 68.h),

          /// Custom Appbar
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
                  "Cards",
                  style: GoogleFonts.inter(
                      fontSize: 22.sp, fontWeight: FontWeight.w700),
                ),
                Container(
                  width: 81.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.r),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 5.r)
                      ]),
                  child: Row(
                    children: [
                      SizedBox(width: 10.w),
                      const Icon(Icons.add, color: Color(0xff49A078)),
                      SizedBox(width: 4.w),
                      Text(
                        'Add',
                        style: GoogleFonts.inter(
                          color: const Color(0xff49A078),
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
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

                /// Card 1
                Container(
                  margin: EdgeInsets.only(right: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  clipBehavior: Clip.hardEdge,
                  height: 218.h,
                  width: 343.w,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      /// Card Background
                      SvgPicture.asset(
                        'assets/icons/page_2_icons/card_1.svg',
                        fit: BoxFit.cover,
                        clipBehavior: Clip.hardEdge,
                      ),

                      /// Bank Name
                      Positioned(
                        top: 20.h,
                        left: 19.w,
                        child: Text(
                          'Allied Supreme Bank',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      /// Card Number
                      Positioned(
                        top: 79.h,
                        left: 20.w,
                        child: Text(
                          '8763 2736 9873 0329',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      /// Holder label
                      Positioned(
                        bottom: 54.h,
                        left: 19.w,
                        child: Text(
                          'Card Holder Name',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      /// Expiry label
                      Positioned(
                        bottom: 54.h,
                        left: 156.w,
                        child: Text(
                          'Expired Date',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      /// Owner Name
                      Positioned(
                        bottom: 34.h,
                        left: 20.w,
                        child: Text(
                          'Shahzaib',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      /// Expiry Date
                      Positioned(
                        bottom: 34.h,
                        left: 156.w,
                        child: Text(
                          '10/28',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// Card 2
                Container(
                  margin: EdgeInsets.only(right: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  clipBehavior: Clip.hardEdge,
                  height: 218.h,
                  width: 343.w,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      /// Card Background
                      SvgPicture.asset(
                        'assets/icons/page_2_icons/card_2.svg',
                        fit: BoxFit.cover,
                        clipBehavior: Clip.hardEdge,
                      ),

                      /// Bank Name
                      Positioned(
                        top: 20.h,
                        left: 19.w,
                        child: Text(
                          'Allied Supreme Bank',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      /// Card Number
                      Positioned(
                        top: 79.h,
                        left: 20.w,
                        child: Text(
                          '8763 2736 9873 0329',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      /// Holder label
                      Positioned(
                        bottom: 54.h,
                        left: 19.w,
                        child: Text(
                          'Card Holder Name',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      /// Expiry label
                      Positioned(
                        bottom: 54.h,
                        left: 156.w,
                        child: Text(
                          'Expired Date',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      /// Owner Name
                      Positioned(
                        bottom: 34.h,
                        left: 20.w,
                        child: Text(
                          'Shahzaib',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      /// Expiry Date
                      Positioned(
                        bottom: 34.h,
                        left: 156.w,
                        child: Text(
                          '10/28',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.h),
          Container(
            height: 98.h,
            width: 363.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                gradient: const LinearGradient(colors: [
                  Color(0xff000000),
                  Color(0xff545454),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 21.w),
                SvgPicture.asset('assets/icons/page_2_icons/snowflake.svg'),
                SizedBox(width: 16.w),
                Text(
                  'Freeze!',
                  style: GoogleFonts.inriaSans(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 22.sp,
                  ),
                ),
                SizedBox(width: 120.w),
                SvgPicture.asset('assets/icons/page_2_icons/toggle_off.svg'),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            height: 98.h,
            width: 363.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              gradient: const LinearGradient(colors: [
                Color(0xff000000),
                Color(0xff545454),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 21.w),
                SvgPicture.asset('assets/icons/page_2_icons/stop.svg'),
                SizedBox(width: 16.w),
                Text(
                  'Deactivate!',
                  style: GoogleFonts.inriaSans(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 22.sp,
                  ),
                ),
                SizedBox(width: 85.w),
                SvgPicture.asset('assets/icons/page_2_icons/toggle_on.svg'),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          Container(
            padding: EdgeInsets.all(10.h),
            height: 158.h,
            width: 363.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: const Color(0xff4DD1A1), width: 1.5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Monthly Budget',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      'May 2023 current',
                      style: TextStyle(
                          fontSize: 14.sp, color: const Color(0xff777777)),
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      'Previous Month',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      'April 2023',
                      style: TextStyle(
                          fontSize: 14.sp, color: const Color(0xff777777)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$1,456',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      '\$560 left',
                      style: TextStyle(
                          fontSize: 14.sp, color: const Color(0xff777777)),
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      '\$1,420',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      '\$10 left',
                      style: TextStyle(
                          fontSize: 14.sp, color: const Color(0xff777777)),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
