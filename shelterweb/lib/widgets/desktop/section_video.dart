import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/desktop/section_titles.dart';
import 'package:video_player/video_player.dart';

class DekstopVideoSection extends StatefulWidget {
  const DekstopVideoSection({Key? key}) : super(key: key);

  @override
  _DekstopVideoSectionState createState() => _DekstopVideoSectionState();
}

class _DekstopVideoSectionState extends State<DekstopVideoSection> {
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
    return Stack(
      children: [
        FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // If the VideoPlayerController has finished initialization, use
              // the data it provides to limit the aspect ratio of the video.
              return SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _controller.value.size.width,
                    height: _controller.value.size.height,
                    // aspectRatio: _controller.value.aspectRatio,
                    // Use the VideoPlayer widget to display the video.
                    child: Stack(
                      children: [
                        VideoPlayer(_controller),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: FractionalOffset.bottomLeft,
                              end: FractionalOffset.topRight,
                              colors: [
                                Colors.black,
                                Colors.transparent,
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              // If the VideoPlayerController is still initializing, show a
              // loading spinner.
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
        const Padding(
          padding: EdgeInsets.all(80.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: DesktopSectionsTitle(
              title: "Hotel amenities\nwithout hotel formality",
              titleColor: Colors.white,
              subTitle:
                  "From simple self check-in to boutique\nbathroom amenities, we bring the best\nof a hotel without any of the formality.",
              subTitleColor: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(80.0),
          child: Align(
            alignment: Alignment.centerLeft,
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
                    ? const Text("Play video")
                    : const Text("Play video"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
