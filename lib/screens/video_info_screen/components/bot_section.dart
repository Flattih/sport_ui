import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_playerrr/colors.dart';

class BotSection extends StatelessWidget {
  const BotSection({
    Key? key,
    required this.videoInfo,
  }) : super(key: key);

  final List videoInfo;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(70),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text(
                  "Circuit 1: Legs Toning",
                  style: TextStyle(
                      color: AppColors.circuitsColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.loop,
                      size: 30,
                      color: AppColors.loopColor,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "3 sets",
                      style:
                          TextStyle(fontSize: 15, color: AppColors.setsColor),
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 31),
                itemCount: videoInfo.isEmpty ? 0 : videoInfo.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () async {
                      await launchUrl(Uri.parse(videoInfo[index]["videoUrl"]));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      height: 135,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      videoInfo[index]["thumbnail"],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    videoInfo[index]["title"],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      videoInfo[index]["time"],
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 18),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 80,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFEAEEFC),
                                ),
                                child: const Text(
                                  "15s rest",
                                  style: TextStyle(color: Color(0xFF839FED)),
                                ),
                              ),
                              Row(
                                children: [
                                  for (int i = 0; i < 70; i++)
                                    i.isEven
                                        ? Container(
                                            width: 3,
                                            height: 1,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                                color: const Color(0xFF839FED)),
                                          )
                                        : Container(
                                            width: 3,
                                            height: 1,
                                            color: Colors.white,
                                          )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
