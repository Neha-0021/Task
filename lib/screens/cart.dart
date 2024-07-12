import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/screens/details.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 25.h,
                    width: 25.w,
                    decoration: const BoxDecoration(
                      color: Color(0xFF631E36),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/layer.png',
                        width: 6.w,
                        height: 11.h,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100.w),
                  child: Text(
                    'My Cart',
                    style: GoogleFonts.lato(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF671E36),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25.h),
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
                    padding:
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 16.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 94,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xFFECECEC), // Fill color
                                border: Border.all(
                                  color: const Color(
                                      0xFFFFFFFF), // Border (stroke) color
                                  width: 1.0, // Border width
                                ),
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
                                  width: 74.w,
                                  height: 74.h,
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.w, vertical: 10.h),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.h),
                                      child: Text(
                                        'Rs. 2,800.00',
                                        style: GoogleFonts.lato(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xFF631E36),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'M',
                                      style: GoogleFonts.lato(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF631E36),
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    QuantitySelector(),
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 5.h),
                              child: const Icon(
                                Icons.delete,
                                color: Color(0xFF72203A),
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            ),
            Container(
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
                  padding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 16.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 94,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFECECEC), // Fill color
                              border: Border.all(
                                color: const Color(
                                    0xFFFFFFFF), // Border (stroke) color
                                width: 1.0, // Border width
                              ),
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
                                width: 74.w,
                                height: 74.h,
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 10.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5.h),
                                    child: Text(
                                      'Rs. 2,800.00',
                                      style: GoogleFonts.lato(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF631E36),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'M',
                                    style: GoogleFonts.lato(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF631E36),
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  QuantitySelector(),
                                ],
                              )),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w, top: 5.h),
                            child: const Icon(
                              Icons.delete,
                              color: Color(0xFF72203A),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 25.h),
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
                            horizontal: 15.h, vertical: 20.h),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/mask.png',
                              width: 30.w,
                              height: 30.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25.w),
                              child: Text(
                                'Use coins (75)   ',
                                style: GoogleFonts.lato(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF631E36),
                                ),
                              ),
                            ),
                          ],
                        )))),
            Container(
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total  ',
                                style: GoogleFonts.lato(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF631E36),
                                ),
                              ),
                              Text(
                                'Rs.2000',
                                style: GoogleFonts.lato(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF631E36),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.h, horizontal: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Coins Cashed ',
                                style: GoogleFonts.lato(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF631E36),
                                ),
                              ),
                              Text(
                                'Rs.200',
                                style: GoogleFonts.lato(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF631E36),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Color(0xFFD3D3D3), // Color of the divider
                          thickness:
                              0.8, // You can adjust the thickness as needed
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.h, horizontal: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Grand Total ',
                                style: GoogleFonts.lato(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF631E36),
                                ),
                              ),
                              Text(
                                'Rs. 1800',
                                style: GoogleFonts.lato(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF631E36),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))),
            const Spacer(),
            Container(
              height: 34.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xFF72203A),
              ),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: Text(
                  'Checkout',
                  style: GoogleFonts.lato(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56.w,
      height: 16.h,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF72203A)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (quantity > 1) quantity--;
              });
            },
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Icon(
                Icons.remove,
                color: const Color(0xFF72203A),
                size: 10.sp,
              ),
            ),
          ),
          Text(
            '$quantity',
            style: TextStyle(
              color: const Color(0xFF72203A),
              fontSize: 10.sp,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                quantity++;
              });
            },
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Icon(
                Icons.add,
                color: const Color(0xFF72203A),
                size: 10.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
