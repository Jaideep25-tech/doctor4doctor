import 'package:doctor4doctor/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:google_fonts/google_fonts.dart';

class logIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    PhoneNumber number;
    PhoneNumber num = PhoneNumber(isoCode: 'IN');
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/icons/login_page.png",
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: getProportionateScreenHeight(25)),
            Text("India’s only app made \nespecially for doctors",
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont('Roboto',
                    color: const Color.fromARGB(255, 95, 95, 95),
                    fontSize: getProportionateScreenWidth(26),
                    fontWeight: FontWeight.w700)),
            SizedBox(height: getProportionateScreenHeight(25)),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(20),
                  right: getProportionateScreenWidth(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 1,
                    width: getProportionateScreenWidth(135),
                    color: const Color.fromARGB(51, 0, 0, 0),
                  ),
                  SizedBox(width: getProportionateScreenWidth(10)),
                  Text("Log in or sign up",
                      style: GoogleFonts.getFont('Roboto',
                          color: const Color.fromARGB(51, 0, 0, 0),
                          fontSize: getProportionateScreenWidth(12),
                          fontWeight: FontWeight.w500)),
                  SizedBox(width: getProportionateScreenWidth(10)),
                  Container(
                    height: 1,
                    width: getProportionateScreenWidth(135),
                    color: const Color.fromARGB(51, 0, 0, 0),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(15)),
            Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(15)),
              child: Text(
                "Phone no.",
                style: TextStyle(
                    color: const Color.fromARGB(104, 113, 111, 111),
                    fontSize: getProportionateScreenWidth(14)),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(10),
                  right: getProportionateScreenWidth(10)),
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(5),
                    horizontal: getProportionateScreenWidth(15)),
                //color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: const Color.fromARGB(104, 113, 111, 111)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(67, 112, 110, 110),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    InternationalPhoneNumberInput(
                      onInputChanged: (value) {
                        number = value;
                      },
                      onInputValidated: (bool value) {
                        print(value);
                      },
                      initialValue: num,
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        showFlags: false,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: const TextStyle(color: Colors.black),
                      textFieldController: controller,
                      formatInput: false,
                      textStyle:
                          const TextStyle(color: Color.fromARGB(0, 242, 242, 242)),
                      maxLength: 10,
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      cursorColor: const Color.fromARGB(51, 242, 242, 242),
                      inputDecoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                        border: InputBorder.none,
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(91, 113, 112, 112),
                            fontSize: 18),
                      ),
                      onSaved: (PhoneNumber number) {
                        print('On Saved: $number');
                      },
                    ),
                    Positioned(
                      left: getProportionateScreenWidth(55),
                      top: 8,
                      bottom: 8,
                      child: Container(
                        height: getProportionateScreenHeight(40),
                        width: 1,
                        color: const Color.fromARGB(51, 65, 64, 64),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(25)),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(10),
                  right: getProportionateScreenWidth(10)),
              child: MaterialButton(
                onPressed: () {},
                color: const Color.fromARGB(255, 69, 88, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(15),
                    horizontal: getProportionateScreenWidth(25)),
                child: Text(
                  "LOG IN",
                  style: GoogleFonts.getFont('Roboto',
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(25)),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(20),
                  right: getProportionateScreenWidth(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 1,
                    width: getProportionateScreenWidth(155),
                    color: const Color.fromARGB(51, 0, 0, 0),
                  ),
                  SizedBox(width: getProportionateScreenWidth(10)),
                  Text(" or ",
                      style: GoogleFonts.getFont('Roboto',
                          color: const Color.fromARGB(51, 0, 0, 0),
                          fontSize: getProportionateScreenWidth(12),
                          fontWeight: FontWeight.w500)),
                  SizedBox(width: getProportionateScreenWidth(10)),
                  Container(
                    height: 1,
                    width: getProportionateScreenWidth(155),
                    color: const Color.fromARGB(51, 0, 0, 0),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: getProportionateScreenHeight(50),
                  width: getProportionateScreenWidth(50),
                  //color: Colors.transparent,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromARGB(51, 0, 0, 0),
                          width: 2,
                          style: BorderStyle.solid)),
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      "assets/icons/google.png",
                    ),
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
                Container(
                  height: getProportionateScreenHeight(50),
                  width: getProportionateScreenWidth(50),
                  //color: Colors.transparent,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromARGB(51, 0, 0, 0),
                          width: 2,
                          style: BorderStyle.solid)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert_outlined,
                      size: getProportionateScreenHeight(30),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            Text("By continuing, you agree to our ",
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont('Roboto',
                    color: const Color.fromARGB(255, 95, 95, 95),
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.w400)),
            SizedBox(height: getProportionateScreenHeight(10)),
            Text("Terms of Servicr Privacy Content Policy",
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont('Roboto',
                    decoration: TextDecoration.underline,
                    color: const Color.fromARGB(255, 69, 88, 255),
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}
