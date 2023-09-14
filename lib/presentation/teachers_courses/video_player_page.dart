import 'package:eguru_app/application/video_player/video_player_bloc.dart';
import 'package:eguru_app/domain/models/course_catagory/chapter_response_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VideoPlayerPage extends StatelessWidget {
  const VideoPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    ChapterResponseModel course =
        ModalRoute.of(context)?.settings.arguments as ChapterResponseModel;
    print(course.video);
    return BlocProvider(
      create: (context) => VideoPlayerBloc(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<VideoPlayerBloc, VideoPlayerState>(
            builder: (context, state) {
              if (state is VideoPlayerInitial) {
                BlocProvider.of<VideoPlayerBloc>(context)
                    .add(VideoPlayerEvent.started(course.video));
              }
              if (state is VideoPlayerPlaying) {
                return state.controller;
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
