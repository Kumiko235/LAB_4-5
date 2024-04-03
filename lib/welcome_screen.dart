import 'package:flutter/material.dart';
import 'package:flutter_application_5/home_screen.dart';
import 'color.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colors.whiteClr,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Покупай цветы\nна радость!",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 1),
          ),
          Image.asset("assets/icons/welcome5.com.png",
              fit: BoxFit.cover, scale: 1.3),
          Text(
            "Всегда свежие и\nяркие!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: colors.grnClr,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      spreadRadius: 4,
                    ),
                  ],
                ),
                child: Text(
                  "Поехали!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
