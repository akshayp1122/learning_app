import 'package:json_annotation/json_annotation.dart';

part 'video.g.dart'; // Include the generated part file

@JsonSerializable()
class Video {
  final int id;
  final String title;
  final String description;
  @JsonKey(name:'video_type')
  String videoType;
  @JsonKey(name:'video_url')
  String videoUrl;

  Video({
    required this.id,
    required this.title,
    required this.description,
    required this.videoType,
    required this.videoUrl
  });

  // Factory constructor for creating a Subject from JSON
  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  // Method for converting a Subject instance to JSON
  Map<String, dynamic> toJson() => _$VideoToJson(this);
}
