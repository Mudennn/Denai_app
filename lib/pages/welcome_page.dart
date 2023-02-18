import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              "image/Hiking.svg",
              height: 250,
            ),
            Text(
              "Let's go hiking!",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            const Text(
              "With Denai Hiking you can hike anywhere that you want!",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
