import 'package:convo_zone/colors.dart';
import 'package:convo_zone/common/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Welcome to ConvoZone!",
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height / 9,
              ),
              CircleAvatar(
                backgroundImage: const AssetImage('assets/landing_photo.png'),
                radius: size.width / 2.1,
              ),
              SizedBox(
                height: size.height / 6,
              ),
              SizedBox(
                width: size.width * 0.7,
                child: CustomButton(
                  text: 'CONTINUE',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
