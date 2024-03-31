import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app_ewabootcamp/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/app.jpg"), fit: BoxFit.cover)),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height) *
                1 /
                4, // responsive design
          ),
          Image.asset(
            "assets/app_logo.png",
            height: 150,
            width: 150,
          ),
          Text(
            "We Are Creative, enjoy ourgg App",
            style: TextStyle(
                fontSize: 25,
                color: Color(0xFFA8C7FD),
                fontWeight: FontWeight.bold,
                fontFamily: 'Schyler'),
          ),
          Spacer(),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => LoginScreen(),
                        ));
                  },
                  child: Text("login",
                      style: TextStyle(
                          color: Color.fromARGB(255, 24, 16, 36),
                          fontSize: 20))))
        ],
      ),
    ));
  }
}
