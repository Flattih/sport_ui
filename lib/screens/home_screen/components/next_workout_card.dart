import 'package:flutter/material.dart';
import 'package:video_playerrr/colors.dart';

class NextWorkoutCard extends StatelessWidget {
  const NextWorkoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.gradientFirst.withOpacity(0.8),
            AppColors.gradientSecond.withOpacity(0.9)
          ],
        ),
        boxShadow: [
          BoxShadow(
              offset: const Offset(5, 10),
              blurRadius: 20,
              color: AppColors.gradientSecond.withOpacity(0.2))
        ],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(80)),
      ),
      padding: const EdgeInsets.only(left: 20, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Next workout",
            style: TextStyle(
                fontSize: 16, color: AppColors.homePageContainerTextSmall),
          ),
          const SizedBox(height: 5),
          Text(
            "Legs Toning",
            style: TextStyle(
                fontSize: 25, color: AppColors.homePageContainerTextSmall),
          ),
          const SizedBox(height: 5),
          Text(
            "and Glutes Workout",
            style: TextStyle(
                fontSize: 25, color: AppColors.homePageContainerTextSmall),
          ),
          const SizedBox(height: 25),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.timer_outlined,
                    color: AppColors.homePageContainerTextSmall,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "60 min",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.homePageContainerTextSmall),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.gradientFirst,
                        blurRadius: 10,
                        offset: const Offset(4, 8))
                  ],
                ),
                child: const Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                  size: 60,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
