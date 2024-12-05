class SchoolData {
  final String name;
  final String address;
  final String numberOfStudents;
  final String numberOfTeachers;

  SchoolData({
    required this.name,
    required this.address,
    required this.numberOfStudents,
    required this.numberOfTeachers,
  });

  factory SchoolData.fromJson(Map<String, dynamic> json) {
    return SchoolData(
      name: json['School Name'],
      address: json['School Address'],
      numberOfStudents: json['Number of Students'],
      numberOfTeachers: json['Number of Teachers'],
    );
  }
}
