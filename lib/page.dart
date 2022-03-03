import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parler_app/signinoroutscreen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PageScreen extends StatefulWidget {
  const PageScreen({Key? key}) : super(key: key);

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {

  List<Widget> pageList = [
    Image(image: AssetImage('assets/images/a1.png'),),
    Image(image: AssetImage('assets/images/a2.png')),
    Image(image: AssetImage('assets/images/a3.png')),
  ];
  int current =0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
         Container(
           height: height*0.27,
           width: width,
           decoration: BoxDecoration(
             color: Colors.white,
             image: DecorationImage(
               image: AssetImage('assets/images/burush.png')
             )
           ),
         ),
          Container(
            height: height*0.27,
            width: width*0.9,
            child:CarouselSlider(
              items: pageList,
              options: CarouselOptions(
                autoPlay: false,
                onPageChanged: (index, reason){
                  setState(() {
                    current = index;
                  });
                }
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height*0.1),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageList.asMap().entries.map((e){
              return GestureDetector(
                onTap: ()=> _controller.animateToPage(e.key),
                child: Container(
                  height: 12,
                  width: 12,
                  margin: EdgeInsets.symmetric(vertical: 8,horizontal: 4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness==Brightness.dark?Colors.white:Colors.black).withOpacity(current==e.key?0.9:0.4)
                  ),
                ),
              );
            } ).toList(),
          ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => StoreScreen(),));
            },
            child: Padding(
              padding:  EdgeInsets.only(top: height*0.1,left: width*0.75),
              child: Container(
                height: height*0.06,
                width: width*0.2,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
                ),
                child: Center(
                  child: Text('Skip',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
