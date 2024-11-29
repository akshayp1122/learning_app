import 'package:json_annotation/json_annotation.dart';

part 'subject.g.dart'; // Include the generated part file

@JsonSerializable()
class Subject {
  final int id;
  final String title;
  final String description;
  final String image;

  Subject({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
  });

  // Factory constructor for creating a Subject from JSON
  factory Subject.fromJson(Map<String, dynamic> json) => _$SubjectFromJson(json);

  // Method for converting a Subject instance to JSON
  Map<String, dynamic> toJson() => _$SubjectToJson(this);
}
