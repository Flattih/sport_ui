import 'package:flutter/material.dart';
import 'package:video_playerrr/colors.dart';
import 'package:video_playerrr/screens/video_info_screen/video_info_screen.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Training",
          style: TextStyle(
              fontSize: 20,
              color: AppColors.homePageSubtitle,
              fontWeight: FontWeight.w700),
        ),
        const Spacer(),
        Text(
          "Details",
          style: TextStyle(
            fontSize: 20,
            color: AppColors.homePageDetail,
          ),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const VideoInfo())),
          child: Icon(
            Icons.arrow_forward,
            color: AppColors.homePageIcons,
          ),
        ),
      ],
    );
  }
}
