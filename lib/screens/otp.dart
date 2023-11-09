import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signup_page/screens/otpInput.dart';

class OTPVerify extends StatelessWidget {
  final TextEditingController digit1 = new TextEditingController();
  final TextEditingController digit2 = new TextEditingController();
  final TextEditingController digit3 = new TextEditingController();
  final TextEditingController digit4 = new TextEditingController();

  final String phoneNumber;
  OTPVerify({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //----------back button--------------
            GestureDetector(
              onTap: () {
                Navigator.pop(
                    context); // No need to assign the result to a variable
              },
              child: Container(
                height: 47,
                width: 47,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(46, 158, 158, 158),
                      blurRadius: 20.0,
                      spreadRadius: 5,
                      offset: Offset(0.0, 2.0),
                    ),
                  ],
                ),
                child: Center(
                    child: Icon(
                  Icons.arrow_back_rounded,
                  size: 16,
                )),
              ),
            ),
            //----------OTP----------
            SizedBox(
              height: 70,
            ),
            Text(
              "Verify Code",
              style: GoogleFonts.inter(
                  fontSize: 44,
                  fontWeight: FontWeight.w100,
                  color: Color(0xff151940)),
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Check your SMS inbox, we have sent you the code at ",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff151940),
                    fontSize: 18),
              ),
              TextSpan(
                text: phoneNumber,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    color: Color(0xff151940),
                    fontSize: 18),
              ),
            ])),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80.0,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                    controller: digit1,
                    maxLength: 1, // Limit input to one character
                    decoration: InputDecoration(
                      counterText: '', // Hide character counter
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0, // Set the desired underline border width
                        ),
                      ),
                      fillColor: Colors.transparent,
                      contentPadding: EdgeInsets.all(16.0), // Add left padding
                    ),
                  ),
                ),
                Container(
                  width: 70.0,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                    controller: digit2,
                    maxLength: 1, // Limit input to one character
                    decoration: InputDecoration(
                      counterText: '', // Hide character counter
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0, // Set the desired underline border width
                        ),
                      ),
                      fillColor: Colors.transparent,
                      contentPadding: EdgeInsets.all(16.0), // Add left padding
                    ),
                  ),
                ),
                Container(
                  width: 70.0,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                    controller: digit3,
                    maxLength: 1, // Limit input to one character
                    decoration: InputDecoration(
                      counterText: '', // Hide character counter
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0, // Set the desired underline border width
                        ),
                      ),
                      fillColor: Colors.transparent,
                      contentPadding: EdgeInsets.all(16.0), // Add left padding
                    ),
                  ),
                ),
                Container(
                  width: 70.0,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                    controller: digit4,
                    maxLength: 1, // Limit input to one character
                    decoration: InputDecoration(
                      counterText: '', // Hide character counter
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0, // Set the desired underline border width
                        ),
                      ),
                      fillColor: Colors.transparent,
                      contentPadding: EdgeInsets.all(16.0), // Add left padding
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Didn’t receive a code? ",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff486484),
                      fontSize: 13),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OTPInputVerify(
                          phoneNumber: phoneNumber,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Resend Code",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      color: Color(0xff5771F9),
                      fontSize: 13,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class UnderlinedTappableText extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const UnderlinedTappableText(
      {Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: RichText(
          text: TextSpan(
            text: text,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
              color: Color(0xff5771F9),
              fontSize: 13,
              decoration: TextDecoration.underline,
            ),
          ),
        ));
  }
}
