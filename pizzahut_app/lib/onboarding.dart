import 'package:flutter/material.dart';
import 'package:pizzahut_app/homepage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
PageController _controller = PageController();

bool onlastpage=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged:(index){
              setState(() {
                onlastpage=(index ==2);
              });
            } ,
            controller: _controller,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:250),
                    child: Text("Welcome to.. ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                  Container(color: Colors.white,child: Image.asset("assets/831394_1.jpg"),),
                  
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(color: Colors.white,child: Image.asset("assets/tumblr_5540d0837842f7fffc5d8001b4a8d2f9_462769cf_1280.png"),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:155),
                    child: Text("let's start our journey",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                  Container(color: Colors.white,child: Image.asset("assets/news8679.jpg"),),
                ],
              )
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                },
                  child: Text("Skip",style: TextStyle(fontWeight: FontWeight.bold),)),
                //dots
                SmoothPageIndicator(controller: _controller, count: 3),
                //next
                onlastpage?
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                }, 
                  child: Text('Done',style: TextStyle(fontWeight: FontWeight.bold))
                  )
                  :
                  GestureDetector(onTap: (){
                  _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);

                },
                  
                  child: Text('Next',style: TextStyle(fontWeight: FontWeight.bold))
                  )
                  
                  


              ],
            ))
        ],
      ),
    );
  }
}