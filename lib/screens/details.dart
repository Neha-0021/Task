import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/screens/cart.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  

  @override
  // ignore: library_private_types_in_public_api
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String _selectedSize = 'S';
  Color _selectedColor = const Color(0xFFFFC0CB);

  Widget _buildSizeOption(String size) {
    bool isSelected = _selectedSize == size;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSize = size;
        });
      },
      child: Container(
        height: 25.h,
        width: 25.w,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF631E36) : Colors.white,
          border: Border.all(color: const Color(0xFF631E36)),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            size,
            style: GoogleFonts.lato(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : const Color(0xFF631E36),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildColorOption(Color color) {
    bool isSelected = _selectedColor == color;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedColor = color;
        });
      },
      child: Container(
        height: 25.h,
        width: 25.w,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: isSelected ? const Color(0xFF631E36) : const Color(0xFFD3D3D3)),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Container(
            height: 17.h,
            width: 17.w,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: 15.h),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: 252
                        .h, 
                    color: const Color(0xFF671E36),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 16.w, top: 50.h, right: 16.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: SvgPicture.asset(
                                  'assets/images/svg/back.svg',
                                ),
                              ),
                              Column(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/svg/shop.svg',
                                  ),
                                  SizedBox(height: 5.h),
                                  Container(
                                    height: 29.h,
                                    width: 74,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '730',
                                          style: GoogleFonts.lato(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold,
                                            color: const Color(0xFF711F3A),
                                          ),
                                        ),
                                        SizedBox(width: 5.w),
                                        Image.asset(
                                          'assets/images/coin.png',
                                          width: 16.w,
                                          height: 16.h,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Text(
                          'Product Details',
                          style: GoogleFonts.lato(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 180.h, left: 16.w, right: 16.w),
                  child: Container(
                      height: 279.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFFFFFFF),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.05),
                            offset: Offset(0, 15),
                            blurRadius: 15,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/tshirt.png',
                          width: 247.w,
                          height: 247.h,
                        ),
                      )),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h, left: 16.w, right: 16.w),
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFFFFFFF),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        offset: Offset(0, 15),
                        blurRadius: 15,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kobbie Cup Final Tee',
                                style: GoogleFonts.lato(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF631E36),
                                ),
                              ),
                              Column(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '-50%',
                                          style: GoogleFonts.lato(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.bold,
                                            color: const Color(0xFFFF0000),
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' Rs. 2,800.00',
                                          style: GoogleFonts.lato(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.bold,
                                            color: const Color(0xFF631E36),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'M.R.P.: Rs. 5600',
                                    style: GoogleFonts.lato(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF631E36),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Text(
                            'Description',
                            style: GoogleFonts.lato(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF631E36),
                            ),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                            style: GoogleFonts.lato(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF631E36),
                            ),
                          ),
                        ],
                      ))),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Size',
                          style: GoogleFonts.lato(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF631E36),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            _buildSizeOption('S'),
                            SizedBox(width: 8.w),
                            _buildSizeOption('M'),
                            SizedBox(width: 8.w),
                            _buildSizeOption('L'),
                            SizedBox(width: 8.w),
                            _buildSizeOption('XL'),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Color',
                          style: GoogleFonts.lato(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF631E36),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            _buildColorOption(const Color(0xFFFFC0CB)), 
                            SizedBox(width: 8.w),
                            _buildColorOption(const Color(0xFF008080)), 
                            SizedBox(width: 8.w),
                            _buildColorOption(const Color(0xFF008000)), 
                            SizedBox(width: 8.w),
                            _buildColorOption(const Color(0xFF000000)), 
                          ],
                        ),
                      ],
                    )
                  ],
                )),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                height: 34.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xFF72203A),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartPage()));
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Text(
                    'Add To Cart',
                    style: GoogleFonts.lato(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
