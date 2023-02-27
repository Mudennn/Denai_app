import 'package:denai_app/constant.dart';
import 'package:denai_app/pages/sign_in/sign_in_screen.dart';
import 'package:denai_app/size_config.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/default_button.dart';
import '../component/content.dart';



class Body extends StatefulWidget {
  const Body({super.key});
  

  @override
  State<Body> createState() => _BodyState();
  
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          //Content dengan gambar 
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: welcomeData.length,
              itemBuilder: (context, index) => Content(
                  title: welcomeData[index].title,
                  image: welcomeData[index].image,
                  text: welcomeData[index].text),
            ),
          ),
          // Dot bar 
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: [
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      welcomeData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  //Button 
                  DefaultButton(
                    text: "Continue",
                    press: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

// Dot Navigator 
  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: animationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? headingColor : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}



// List data 

class Onboard {
  final String image, title, text;

  Onboard({
    required this.image,
    required this.title,
    required this.text,
  });
}

final List<Onboard> welcomeData = [
  Onboard(
    image: "image/Hiking.svg",
    title: "Denai Hiking",
    text: "Welcome to Denai Hiking, Let's go hiking!",
  ),
  Onboard(
    image: "image/Community.svg",
    title: "Build your own community",
    text: "Now you can create your own community in one place!",
  ),
  Onboard(
    image: "image/Card Credit.svg",
    title: "Fast and Secure Payment",
    text: "No need to do manualy!",
  ),
];


