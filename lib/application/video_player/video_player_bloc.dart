import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
part 'video_player_event.dart';
part 'video_player_state.dart';
part 'video_player_bloc.freezed.dart';

class VideoPlayerBloc extends Bloc<VideoPlayerEvent, VideoPlayerState> {
  VideoPlayerBloc() : super(const VideoPlayerInitial()) {
    VideoPlayerController videoPlayerController;
    on<Started>((event, emit) async {
      emit(const VideoPlayerState.loading());
      String videoUrl = imageUrlConvert(event.videoUrl);
      videoPlayerController =
          VideoPlayerController.networkUrl(Uri.parse(videoUrl));
      await videoPlayerController.initialize();
      final chewieController = ChewieController(
          videoPlayerController: videoPlayerController, autoPlay: true);
      final playerWidget = Chewie(
        controller: chewieController,
      );
      emit(VideoPlayerState.playing(playerWidget));
    });
  }
}
