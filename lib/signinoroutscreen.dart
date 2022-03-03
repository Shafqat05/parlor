import 'package:flutter/material.dart';
import 'package:parler_app/page.dart';
import 'package:parler_app/signin.dart';
import 'package:parler_app/signup.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: height*0.37,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/logtop.png'),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height*0.02),
              child: Card(
                elevation: 20,
                child: Padding(
                  padding:  EdgeInsets.only(top: height*0.04,left: width*0.06,right: width*0.06),
                  child: Container(
                    height: height*0.25,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(children: [
                      Container(
                        height: height*0.1,
                        margin: EdgeInsets.only(top: height*0.010,left: width*0.040,right: width*0.040),
                        child: Center(
                          child: Text(
                            "Welcome to Make Up Store",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp(),));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: height*0.010,left: width*0.040,right: width*0.040),
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignIn(),));

                        },
                        child: Container(
                          margin: EdgeInsets.only(top: height*0.010,left: width*0.040,right: width*0.040),
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.pink,width: 2)
                          ),
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(color: Colors.pink,fontSize: 15,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PageScreen(),));
              },
              child: Padding(
                padding:  EdgeInsets.only(top: height*0.030),
                child: Text('Skip',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: width*0.6),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/botompic.png'),
                ),
              ),
            ),
          ],
        ),
          Positioned(
            top: height*0.3,
            left: width*0.030,
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PageScreen(),));
              },
              child: Container(
                height: height*0.07,
                width: width*0.07,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    shape: BoxShape.circle
                ),
                child: Center(
                  child: Icon(Icons.arrow_back,color: Colors.white,),
                ),
              ),
            ),
          ),
      ]),
    );
  }
}
