import 'package:flutter/material.dart';
import 'package:video_playerrr/colors.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Legs Toning",
            style:
                TextStyle(fontSize: 25, color: AppColors.secondPageTitleColor),
          ),
          const SizedBox(height: 5),
          Text(
            "and Glutes Workout",
            style:
                TextStyle(fontSize: 25, color: AppColors.secondPageTitleColor),
          ),
          const SizedBox(height: 50),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.secondPageContainerGradient1stColor,
                        AppColors.secondPageContainerGradient2ndColor
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.timer_outlined,
                        color: AppColors.secondPageIconColor,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "68 min",
                        style: TextStyle(
                            fontSize: 16, color: AppColors.secondPageIconColor),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 210,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.secondPageContainerGradient1stColor,
                        AppColors.secondPageContainerGradient2ndColor
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.handyman_outlined,
                        color: AppColors.secondPageIconColor,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Resistent band, kettebell",
                        style: TextStyle(
                            fontSize: 16, color: AppColors.secondPageIconColor),
                      )
                    ],
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
