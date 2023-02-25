import 'package:denai_app/constant.dart';
import 'package:denai_app/widgets/responsive_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePageV2 extends StatefulWidget {
  const WelcomePageV2({super.key});

  @override
  State<WelcomePageV2> createState() => _WelcomePageV2State();
}

class _WelcomePageV2State extends State<WelcomePageV2> {
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
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  DefaultButton(
                    text: "Continue",
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

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: animationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? buttonColor : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        // style: ButtonStyle(backgroundColor: ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}

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
    text: "Now you can create your on community in one place!",
  ),
  Onboard(
    image: "image/Card Credit.svg",
    title: "Fast and Secure Payment",
    text: "No need to do manualy!",
  ),
];

class Content extends StatelessWidget {
  const Content({
    Key? key,
    required this.text,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String text, image, title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 28,
                  color: headingColor,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: textColor),
            ),
            const Spacer(
              flex: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            SvgPicture.asset(
              image,
              height: 265,
              width: 235,
            ),
          ],
        ),
      ),
    );
  }
}
