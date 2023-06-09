import 'package:flutter/material.dart';
import 'package:fusion/auth_controller.dart';
import 'package:google_sign_in/google_sign_in.dart';

class WelcomePage extends StatelessWidget {
  String? email;
  WelcomePage({Key? key , this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: w,
              height: h*0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/signup.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: h*0.15),
                  CircleAvatar (
                    radius: 60.0,
                    backgroundColor: Colors.white70,
                    child: Image(
                      image: AssetImage("img/profile1.png"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Container(
              width: w,
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36.0,
                    ),
                  ),
                  Text(
                    email!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200.0,
            ),
            GestureDetector(
              onTap: (){
                AuthController.instance.logOut();
              },
              child: Container(
                width: w*0.5,
                height: h*0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                    image: AssetImage("img/loginbtn.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text (
                    "Sign out",
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

