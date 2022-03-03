import 'package:flutter/material.dart';
import 'package:parler_app/page.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:validators/validators.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:Stack(
        children:[ Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 310,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/logtop.png'),
              ),
            ),
            Card(
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 30,right: 30),
                child: Container(
                  height: 280,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(children: [
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 20),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 20),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.pink.withAlpha(100),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            hintText: "Enter Your Name",
                            prefixIcon: Icon(Icons.person,color: Colors.black,),
                            hintStyle: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        )
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 20),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.pink.withAlpha(100),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Icon(Icons.email,color: Colors.black,),
                            hintStyle: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        )
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 20),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.pink.withAlpha(100),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.password,color: Colors.black,),
                            hintStyle: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        )
                    ),
                    GestureDetector(
                      onTap: (){
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 15,bottom: 5,left: 20,right: 20),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],),
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
                margin: EdgeInsets.only(left: 320),
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
