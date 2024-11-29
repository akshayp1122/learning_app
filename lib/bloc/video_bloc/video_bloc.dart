import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/bloc/video_bloc/video_event.dart';
import 'package:learning_app/bloc/video_bloc/video_state.dart';
import 'package:learning_app/repository/video_repository.dart';
class VideoBloc extends Bloc<VideoEvent, VideoState> {
  final VideoRepository repository;

  VideoBloc(this.repository) : super(const VideoState.initial()) {
    on<FetchVideos>((event, emit) async {
      emit(const VideoState.loading());
      try {
        final modules = await repository.fetchVideos();
        emit(VideoState.loaded(modules));
      } catch (e) {
        emit(VideoState.error(e.toString()));
      }
    });
  }
}
