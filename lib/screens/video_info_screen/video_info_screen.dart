import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:video_playerrr/colors.dart';
import 'package:video_playerrr/screens/video_info_screen/components/bot_section.dart';
import 'package:video_playerrr/screens/video_info_screen/components/top_section.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List videoInfo = [];
  bool _playArea = false;
  initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/videoinfo.json")
        .then((value) {
      videoInfo = jsonDecode(value);
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
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColors.secondPageIconColor,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.info_outline,
                size: 26,
                color: AppColors.secondPageIconColor,
              ),
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  AppColors.gradientFirst.withOpacity(0.9),
                  AppColors.gradientSecond
                ],
                begin: const FractionalOffset(0.0, 0.4),
                end: Alignment.topRight),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(32),
                margin: const EdgeInsets.only(top: 40),
                width: double.infinity,
                height: 250,
                child: const TopSection(),
              ),
              BotSection(videoInfo: videoInfo)
            ],
          ),
        ),
      ),
    );
  }
}
