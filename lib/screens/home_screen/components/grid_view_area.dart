import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_playerrr/colors.dart';

class GridViewArea extends StatelessWidget {
  const GridViewArea({
    Key? key,
    required this.info,
    required this.width,
  }) : super(key: key);

  final List info;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: info.isEmpty ? 0 : info.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: (width < 980 && kIsWeb) ? 0.5 : 0.8,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: !kIsWeb ? 2 : 6),
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(5, 5),
                color: AppColors.gradientSecond.withOpacity(0.2),
              ),
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(-5, -5),
                color: AppColors.gradientSecond.withOpacity(0.2),
              ),
            ],
            color: Colors.white,
            image: DecorationImage(image: AssetImage(info[index]["img"])),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            info[index]["title"],
            style: TextStyle(
                fontSize: kIsWeb ? 20 : 35, color: AppColors.homePageDetail),
          ),
        );
      },
    );
  }
}
