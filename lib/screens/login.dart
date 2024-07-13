import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/screens/details.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

 

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF1F5),
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 90.h),
              child: Text(
                'Login',
                style: GoogleFonts.lato(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF65656A),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    style: GoogleFonts.lato(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Mobile Number',
                      hintStyle: GoogleFonts.lato(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF65656A),
                      ),
                      suffixIcon: const Icon(
                        Icons.person,
                        color: Color(0xFFA0A0A0),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFDADADA), width: 0.8),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFDADADA), width: 0.5),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: TextField(
                    obscureText: _obscureText,
                    style: GoogleFonts.lato(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: GoogleFonts.lato(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF65656A),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText ? Icons.key_off : Icons.key,
                          color: const Color(0xFFA0A0A0),
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFDADADA), width: 0.8),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFDADADA), width: 0.8),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Forgot your password?',
                              style: GoogleFonts.lato(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF65656A),
                              ),
                            ),
                            TextSpan(
                              text: ' Reset',
                              style: GoogleFonts.lato(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF72203A),
                              ),
                            )
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
              child: Container(
                height: 54.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF72203A),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailPage()));
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Text(
                    'Login',
                    style: GoogleFonts.lato(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Column(
              children: [
                Text(
                  '- or sign in with -',
                  style: GoogleFonts.lato(
                    fontSize: 12.sp,
                    color: const Color(0xFF65656A),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Container(
                    height: 54.h,
                    width: 54.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF8F8F8),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/google.png',
                        width: 28.w,
                        height: 28.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Don’t have an account?',
                      style: GoogleFonts.lato(
                        fontSize: 15.sp,
                        color: const Color(0xFF65656A),
                      ),
                    ),
                    TextSpan(
                      text: ' Sign Up',
                      style: GoogleFonts.lato(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF72203A),
                      ),
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
