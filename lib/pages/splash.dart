import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import 'log_in.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => logIn()));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 69, 88, 255),
              Color.fromARGB(255, 161, 171, 255),
              Color.fromARGB(255, 69, 88, 255),
            ],
          ),
        ),
        child: Center(
            child: BounceInDown(
              child: Text('Doctor4doctor',
                  style: GoogleFonts.getFont('Roboto',
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(37),
                      fontWeight: FontWeight.w700)),
            )),
      ),
    );
  }
}
