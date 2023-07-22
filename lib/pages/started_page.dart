import 'package:flutter/material.dart';
import 'package:flutter_pelatihan/pages/onboarding_page.dart';
import 'package:flutter_pelatihan/pages/signin_page.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 50,
            right: 30,
            left: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Selamat Datang Di \nUniversitas Muhammadiyah \nBangka Belitung',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Montserrat/MontserratExtraBold',
                  )),
              SizedBox(height: 20),
              Text(
                'Berkemajuan & Mencerahkan',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Montserrat/MontserratRegular',
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 350),
                  child: Container(
                    width: 200,
                    height: 45,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xffFFFFFFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(66))),
                      onPressed: () {},
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat/MontserratSemiBold',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    width: 200,
                    height: 45,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInPages()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.white,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(66))),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat/MontserratSemiBold',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
