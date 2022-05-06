import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/mobile/section_titles.dart';
import 'package:video_player/video_player.dart';

class MobileVideoSection extends StatefulWidget {
  const MobileVideoSection({Key? key}) : super(key: key);

  @override
  _MobileVideoSectionState createState() => _MobileVideoSectionState();
}

class _MobileVideoSectionState extends State<MobileVideoSection> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://images.sonder.com/video/upload/v1618348428/catalina/homepage/background-video.mp4',
    );

    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.play();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: MobileSectionsTitle(
            title: "Hotel amenities\nwithout hotel formality",
            titleColor: Colors.black,
            subTitle:
                "From simple self check-in to boutique\nbathroom amenities, we bring the best\nof a hotel without any of the formality.",
            subTitleColor: Colors.black45,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
            hoverColor: Colors.grey[300],
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              setState(() {
                // If the video is playing, pause it.
                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {
                  // If the video is paused, play it.
                  _controller.play();
                }
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.yellow),
              child: _controller.value.isPlaying
                  ? const Text("Pause video")
                  : const Text("Play video"),
            ),
          ),
        ),
      ],
    );
  }
}
