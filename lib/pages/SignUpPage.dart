import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'WardrobePage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset("assets/logos/BackLogo.png")),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Archivo',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: TabBar(
                      indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      labelColor: Colors.black,
                      tabs: [
                        Tab(
                          text: "Email",
                        ),
                        Tab(
                          text: "Phone",
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Enter your email or phone",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                  text: TextSpan(
                      style:
                          TextStyle(color: Colors.black), //apply style to all
                      children: [
                    TextSpan(text: "By continuing your agree to the "),
                    TextSpan(
                        text: "Terms of Services ",
                        style: TextStyle(color: Colors.green[700])),
                    TextSpan(text: "and "),
                    TextSpan(
                        text: "Service Policies. ",
                        style: TextStyle(color: Colors.green[700]))
                  ])),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF05944F),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        fixedSize: Size(500, 50)),
                    onPressed: () => (Wardrobe()),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "or",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(                        
                        primary: Color(0xFF09101D),
                        padding:
                            EdgeInsets.only(left: 70, top: 5, bottom: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        fixedSize: Size(500, 50)),
                    onPressed: () => (Wardrobe()),
                    child: Row(                        
                      children: [
                        ImageIcon(
                          AssetImage("assets/logos/AppleLogo.png")
                        ),
                        SizedBox(width: 10),
                        Text(                           
                          "Continue with Apple",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 10,),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(                        
                        primary: Color(0xFF425993),
                        padding:
                            EdgeInsets.only(left: 50, top: 5, bottom: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        fixedSize: Size(500, 50)),
                    onPressed: () => (Wardrobe()),
                    child: Row(                        
                      children: [
                        ImageIcon(
                          AssetImage("assets/logos/FacebookLogo.png"),
                          size: 35,
                        ),
                        SizedBox(width: 10),
                        Text(                           
                          "Continue with Facebook",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 10,),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(                        
                        primary: Color(0xFF5384EC),
                        padding:
                            EdgeInsets.only(left: 68, top: 5, bottom: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        fixedSize: Size(500, 50)),
                    onPressed: () => (Wardrobe()),
                    child: Row(                        
                      children: [
                        ImageIcon(
                          AssetImage("assets/logos/GoogleLogo.png"),
                          size: 22,
                        ),
                        SizedBox(width: 10),
                        Text(                           
                          "Continue with Google",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style:
                            TextStyle(color: Colors.black), //apply style to all
                        children: [
                      TextSpan(text: "or "),
                      TextSpan(
                          text: "Login or continue as guest",
                          style: TextStyle(color: Colors.green[700])),
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
