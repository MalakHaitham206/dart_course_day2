// ignore_for_file: unused_local_variable

void mapsfunc() {
  //create an empty map:
  var myMap = {};
  //create it with map constructor
  Map<int, String> myMap2 = {};
  myMap2.addAll({1: "malk haitham", 2: "Jana haitham", 3: "maryam haitham"});

  // Creating maps
  Map<String, int> ages = {'Alice': 25, 'Bob': 30};

  // Adding/updating
  ages['David'] = 28; // Add new
  ages['Alice'] = 26; // Update existing

  // Safe access
  print(ages['Unknown'] ?? 0); // Default if null

  Map<String, int> scores = {'Math': 95, 'Science': 88, 'English': 92};

  // Iteration
  scores.forEach((subject, score) {
    print('$subject: $score');
  });

  // Get keys and values
  List<String> subjects = scores.keys.toList();
  List<int> values = scores.values.toList();
  ages.putIfAbsent("malak", () => 29380233);
  print(ages['malak']);
  ages.length;
  ages.clear();
  print(ages);
}
