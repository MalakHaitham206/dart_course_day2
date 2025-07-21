void studentGradeProcess() {
  List<int> grades = [85, 92, 78, 96, 88, 76, 94];

  // Filter passing grades (>= 80)
  List<int> passingGrades = grades.where((grade) => grade >= 80).toList();

  // Convert to letter grades
  List<String> letterGrades = passingGrades.map((grade) {
    if (grade >= 90) return 'A';
    if (grade >= 80) return 'B';
    return 'C';
  }).toList();

  print('Passing grades: $passingGrades');
  print('Letter grades: $letterGrades');
}
