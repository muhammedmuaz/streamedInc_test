import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:streamedinc_test/models/home_posts_model.dart' as pt;
import 'package:streamedinc_test/services/app_images.dart';
import 'package:video_player/video_player.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamedinc_test/utils/helper_widgets.dart/add_height.dart';

import '../../../const/design_const.dart';
import '../../../utils/screen_helper.dart';

class HomeFeed extends StatefulWidget {
  final pt.Post post;
  const HomeFeed({required this.post, super.key});

  @override
  State<HomeFeed> createState() => _HomeFeedState();
}

class _HomeFeedState extends State<HomeFeed> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    if (widget.post.postVideo != null) {
      _controller =
          VideoPlayerController.networkUrl(Uri.parse(widget.post.postVideo!))
            ..initialize().then((_) {
              _controller.play();
              // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
              setState(() {});
            });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = ScreenHelper.getScreenWidth(context);
    final height = ScreenHelper.getScreenHeight(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
              widget.post.images[0].image,
            ),
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          if (widget.post.postVideo != null)
            Center(
                child: _controller.value.isInitialized
                    ? VideoPlayer(_controller)
                    : const SizedBox()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 12.0),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      margin: const EdgeInsets.only(right: 12.0),
                      decoration: const BoxDecoration(
                          border: GradientBoxBorder(
                            gradient: LinearGradient(colors: [
                              Color(0xff3263B0),
                              Color(0xff3CFEDE),
                            ]),
                            width: 2,
                          ),
                          shape: BoxShape.circle),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        margin: const EdgeInsets.only(
                          right: 12.0,
                        ),
                        decoration: const BoxDecoration(
                            border: GradientBoxBorder(
                              gradient: LinearGradient(colors: [
                                Color(0xff3263B0),
                                Color(0xff3CFEDE),
                              ]),
                              width: 2,
                            ),
                            shape: BoxShape.circle),
                        child: Image.asset(
                          AppImages.bottomIcon2,
                          color: Colors.white,
                        )),
                    Container(
                        width: 60,
                        height: 60,
                        margin: const EdgeInsets.only(
                          right: 12.0,
                        ),
                        decoration: const BoxDecoration(
                            border: GradientBoxBorder(
                              gradient: LinearGradient(colors: [
                                Color(0xff3263B0),
                                Color(0xff3CFEDE),
                              ]),
                              width: 2,
                            ),
                            shape: BoxShape.circle),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              Expanded(
                  child: Stack(
                children: [
                  Positioned(
                      left: 18.0,
                      bottom: 18.0,
                      child: SizedBox(
                        width: width * 0.7,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.post.name!,
                              style: GoogleFonts.urbanist(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.2,
                                      fontSize: 16,
                                      color:
                                          DesignConstants.kTextLightGreyColor)),
                              textAlign: TextAlign.center,
                            ),
                            const AddHeight(0.005),
                            Text(
                              'AED ${widget.post.price.toString()}',
                              style: GoogleFonts.urbanist(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.2,
                                      fontSize: 24,
                                      color:
                                          DesignConstants.kScreenYellowColor)),
                              textAlign: TextAlign.center,
                            ),
                            const AddHeight(0.005),
                            Text(
                              widget.post.hashtags.toString(),
                              style: GoogleFonts.urbanist(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.2,
                                      fontSize: 13,
                                      color:
                                          DesignConstants.kTextLightGreyColor)),
                            ),
                            const AddHeight(0.008),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.amber,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text('Dubai, United Arab Emirates',
                                    style: GoogleFonts.urbanist(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.2,
                                            fontSize: 13,
                                            color: DesignConstants
                                                .kTextLightGreyColor))),
                              ],
                            ),
                            const AddHeight(0.01),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                  height: height * 0.04,
                                  width: width * 0.3,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(colors: [
                                        Color(0xFF3263B0),
                                        Color(0xFF3CFEDE),
                                      ]),
                                      color: DesignConstants.kPrimaryBtn,
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child: Text(
                                    'Visit Website',
                                    style: GoogleFonts.urbanist(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          letterSpacing: 0.2,
                                          color: DesignConstants
                                              .kTextLightGreyColor),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      right: 18.0,
                      bottom: 18.0,
                      child: SizedBox(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      height: 60,
                                      width: 60,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Color(0xFF3263B0),
                                            Color(0xFF3CFEDE),
                                          ]),
                                          color: DesignConstants.kPrimaryBtn,
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.heart_broken,
                                        color: Colors.red,
                                      )),
                                ),
                                Text(
                                  '4.5K',
                                  style: GoogleFonts.urbanist(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.2,
                                          fontSize: 14,
                                          color: DesignConstants
                                              .kTextLightGreyColor)),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            const AddHeight(0.01),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      height: 60,
                                      width: 60,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Color(0xFF3263B0),
                                            Color(0xFF3CFEDE),
                                          ]),
                                          color: DesignConstants.kPrimaryBtn,
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.messenger_outline_sharp,
                                        color: Colors.white,
                                      )),
                                ),
                                Text(
                                  '12.1K',
                                  style: GoogleFonts.urbanist(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.2,
                                          fontSize: 14,
                                          color: DesignConstants
                                              .kTextLightGreyColor)),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            const AddHeight(0.01),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      height: 60,
                                      width: 60,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Color(0xFF3263B0),
                                            Color(0xFF3CFEDE),
                                          ]),
                                          color: DesignConstants.kPrimaryBtn,
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.share,
                                        color: Colors.white,
                                      )),
                                ),
                                Text(
                                  'Share',
                                  style: GoogleFonts.urbanist(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.2,
                                          fontSize: 14,
                                          color: DesignConstants
                                              .kTextLightGreyColor)),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            const AddHeight(0.01),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                widget.post.profileImage!),
                                            fit: BoxFit.cover),
                                        color: DesignConstants.kPrimaryBtn,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ))
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
