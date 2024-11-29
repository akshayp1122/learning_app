import 'package:dio/dio.dart';
import 'package:learning_app/models/subject.dart';
import 'dart:convert';

class SubjectRepository {
  final Dio dio;

  // Constructor with a named parameter for Dio
  SubjectRepository({required this.dio});

 Future<List<Subject>> fetchSubjects() async {
  try {
    final response = await dio.get('https://trogon.info/interview/php/api/subjects.php');

    // Print the raw response to check
    print('Raw Response: ${response.data}');

    if (response.statusCode == 200) {
      // Check if the response data is a string and decode it
      if (response.data is String) {
        final decodedData = jsonDecode(response.data);
        if (decodedData is List) {
          return decodedData.map((json) => Subject.fromJson(json)).toList();
        } else {
          throw Exception('Expected a List, but got: ${decodedData.runtimeType}');
        }
      } 
      // If the data is already a list, use it directly
      else if (response.data is List) {
        final List<dynamic> data = response.data;
        return data.map((json) => Subject.fromJson(json)).toList();
      } else {
        throw Exception('Unexpected response format');
      }
    } else {
      throw Exception('Failed to load subjects: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    throw Exception('Failed to load subjects: $e');
  }
}




}
