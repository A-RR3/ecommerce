import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoDemo extends StatefulWidget {
  const VideoDemo({super.key});

  final String title = "Video Demo";

  @override
  VideoDemoState createState() => VideoDemoState();
}

class VideoDemoState extends State<VideoDemo> {
  VideoPlayerController? controller;
  dynamic _initializeVideoPlayerFuture;
  late String fileName;

  void pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      PlatformFile file = result.files.first;
      fileName = file.name;
      controller = VideoPlayerController.asset("videos/$fileName");
      _initializeVideoPlayerFuture = controller!.initialize();
      controller!.setLooping(true);
      controller!.setVolume(1.0);
      setState(() {
        controller!.play();
      });
    } else {
      debugPrint('----');
    }
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video Demo"),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Center(
                  child: AspectRatio(
                    aspectRatio: controller!.value.aspectRatio,
                    child: VideoPlayer(controller!),
                  ),
                );
              } else {
                return const Center(
                  child: Text('no file selected'),
                );
              }
            },
          ),
          MaterialButton(
              color: Colors.blueGrey,
              child: const Text('press'),
              onPressed: () {
                pickFile();
              })
        ],
      ),
      floatingActionButton: controller != null
          ? FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (controller!.value.isPlaying) {
                    controller!.pause();
                  } else {
                    controller!.play();
                  }
                });
              },
              child: Icon(
                  controller!.value.isPlaying ? Icons.pause : Icons.play_arrow),
            )
          : FloatingActionButton(onPressed: () {}),
    );
  }
}
