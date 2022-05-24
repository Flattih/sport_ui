import 'package:flutter/material.dart';
import 'package:video_playerrr/colors.dart';

class StackCard extends StatelessWidget {
  const StackCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/card.jpg"), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.gradientSecond.withOpacity(0.3),
                  blurRadius: 40,
                  offset: const Offset(8, 10),
                ),
                BoxShadow(
                  color: AppColors.gradientSecond.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(-1, -5),
                ),
              ],
            ),
          ),
          Image.asset("assets/figure.png"),
          Container(
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.only(left: 150, top: 50),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "You are doing great",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.homePageDetail),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 27),
                  child: Text(
                    "Keep it up\nstick to your plan",
                    style: TextStyle(
                        fontSize: 16, color: AppColors.homePagePlanColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
