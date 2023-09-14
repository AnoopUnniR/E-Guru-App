
part of 'video_player_bloc.dart';



@freezed
abstract class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState.initial() = VideoPlayerInitial;
  const factory VideoPlayerState.loading() = VideoPlayerLoading;
  const factory VideoPlayerState.playing(
   Widget controller
  ) = VideoPlayerPlaying;
  const factory VideoPlayerState.paused() = VideoPlayerPaused;
  const factory VideoPlayerState.error(String message) = VideoPlayerError;
}