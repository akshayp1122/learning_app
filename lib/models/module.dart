import 'package:json_annotation/json_annotation.dart';

part 'module.g.dart'; // Include the generated part file

@JsonSerializable()
class Module {
  final int id;
  final String title;
  final String description;
  

  Module({
    required this.id,
    required this.title,
    required this.description
    
  });

  // Factory constructor for creating a Subject from JSON
  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);

  // Method for converting a Subject instance to JSON
  Map<String, dynamic> toJson() => _$ModuleToJson(this);
}
