import 'dart:convert';
import 'package:flutter/services.dart';

class SchoolInfoViewModel {
  String schoolName = "School Name";
  String schoolAddress = "School Address";
  String studentsNo = "Number of Students";
  String teachersNo = "Number of Teachers";

  Future<void> loadSchoolData() async {
    try {
      final String response = await rootBundle.loadString('JSONdata/SchoolData.json');
      final List<dynamic> data = json.decode(response);

      schoolName = data[0]['School Name'];
      schoolAddress = data[0]['School Address'];
      studentsNo = data[0]['Number of Students'];
      teachersNo = data[0]['Number of Teachers'];
    } catch (e) {
      print("Error loading JSON file: $e");
    }
  }
}
