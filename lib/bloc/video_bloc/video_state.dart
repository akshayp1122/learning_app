import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning_app/models/video.dart';
part 'video_state.freezed.dart'; // Add this 

@freezed
class VideoState with _$VideoState {
  const factory VideoState.initial() = _Video_Initial;
  const factory VideoState.loading() = _Video_Loading;
  const factory VideoState.loaded(List<Video> videos) = _Video_Loaded;
  const factory VideoState.error(String message) = _Video_Error;
}
