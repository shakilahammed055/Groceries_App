import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SinginScreen extends StatefulWidget {
  const SinginScreen({Key? key}) : super(key: key);

  @override
  State<SinginScreen> createState() => _SinginScreenState();
}

class _SinginScreenState extends State<SinginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              child: Image(
                width: double.infinity,
                height: 250,
                image: AssetImage(
                  "assets/images/Mask Group.png",
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Get your groceries",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                "with nectar",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                right: 20,
                bottom: 40,
              ),
              child: Stack(
                children: [
                  InternationalPhoneNumberInput(
                    onInputChanged: (value) {},
                    formatInput: false,

                    // autoValidateMode: AutovalidateMode.onUserInteraction,
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Text(
                "Or connect with social media",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 25,
            //   ),
            //   child: Container(
            //     width: double.infinity,
            //     height: 45,
            //     child: ElevatedButton(
            //       onPressed: () {},
            //       child: Text(
            //         "Continue with Google",
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       style: ElevatedButton.styleFrom(
            //         primary: Color(0xff53B175),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                width: double.infinity,
                height: 45,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/6795.png",
                    alignment: Alignment.center,
                  ),
                  label: Text(
                    "Continue with Google",
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                // ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                width: double.infinity,
                height: 45,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/6795.png",
                    alignment: Alignment.centerLeft,
                  ),
                  label: Text(
                    "Continue with Google",
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
