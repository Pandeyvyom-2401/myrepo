
import 'package:flutter/material.dart';
import 'common_widget.dart';
class Welcome_page extends StatelessWidget {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Commonconatiner(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.04,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.008,
                    horizontal: MediaQuery.of(context).size.width * 0.008,
                  ),
                  child: Expanded(
                    child: Text(
                      "Food donation is one of the simplest yet most powerful ways to make a difference in someone’s life. Every meal you share brings hope to someone struggling with hunger and reminds them that kindness still exists in this world. When you give food, you’re not just feeding a person — you’re nourishing a soul, spreading compassion, and helping build a community where no one goes to bed hungry. Even the smallest act of generosity can create a ripple of change — because a full stomach today can inspire a brighter tomorrow.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03,
                    vertical: MediaQuery.of(context).size.height * 0.03,
                  ),
                  child: SafeArea(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              bottom:
                              MediaQuery.of(context).size.height * 0.015,
                            ),
                            child: Commonelevatedbutton(
                              text: "Create Account",
                              onPressed: () {
                              },
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          CommonOutlinebutton(
                            text: "LogIn",
                            onPressed: () {
                            },
                          ),
                          Text("Skip >",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}