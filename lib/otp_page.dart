import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 196, 245, 247),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 0),
              child: Text(
                'OTP code Verification',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      letterSpacing: .5,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            const Text(
              'Code has been sent to +91 90901*****',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                top: 10,
              ),
              child: PinCodeTextField(
                appContext: context,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                // backgroundColor: Color.fromARGB(5, 18, 203, 18),

                // controller: TextEditingController(),
                length: 4,
                pinTheme: PinTheme(
                  disabledColor: Color.fromARGB(5, 254, 255, 255),
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldWidth: 50,
                  inactiveColor: Colors.white,
                  selectedColor: Colors.white,
                  activeColor: Colors.white,
                  selectedFillColor: Colors.white,
                  inactiveFillColor: Colors.grey.shade100,
                  borderWidth: 1,
                ),
                onChanged: (value) {},
              ),
            ),
            const Text(
              'Resend code in 45 s',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            // const SizedBox(
            //   height: 240,
            // ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 25, top: 80, left: 25, right: 25),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 25, 162, 169),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text(
                      'Verify',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
