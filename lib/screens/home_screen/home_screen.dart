import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:video_playerrr/colors.dart';
import 'package:video_playerrr/screens/home_screen/components/grid_view_area.dart';
import 'package:video_playerrr/screens/home_screen/components/header_row.dart';
import 'package:video_playerrr/screens/home_screen/components/next_workout_card.dart';
import 'package:video_playerrr/screens/home_screen/components/stack_car.dart';
import 'package:video_playerrr/screens/video_info_screen/video_info_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List info = [];
  initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/info.json")
        .then((value) {
      info = jsonDecode(value);
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.homePageBackground,
      appBar: AppBar(
        titleTextStyle: TextStyle(
            color: AppColors.homePageTitle,
            fontWeight: FontWeight.w700,
            fontSize: 30),
        title: const Padding(
          padding: EdgeInsets.only(left: 6),
          child: Text(
            "Training",
          ),
        ),
        actions: [
          Icon(
            Icons.arrow_back_ios,
            color: AppColors.homePageIcons,
          ),
          Icon(
            Icons.calendar_today_outlined,
            color: AppColors.homePageIcons,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.homePageIcons,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 26, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const HeaderRow(),
              const SizedBox(
                height: 20,
              ),
              const NextWorkoutCard(),
              const SizedBox(height: 5),
              const StackCard(),
              const Text(
                "Area of focus",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GridViewArea(info: info, width: width)
            ],
          ),
        ),
      ),
    );
  }
}
