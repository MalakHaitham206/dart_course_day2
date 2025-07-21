// import 'package:day2_dart_course/lists.dart';
import 'package:day2_dart_course/functions.dart';
import 'package:day2_dart_course/maps.dart';

// import 'package:day2_dart_course/sets.dart';
// function that return null
foo() {}
void main(List<String> arguments) {
  mapsfunc();
  print(isAGirl(name: "malak", arrange: 1));
  // Crystal clear calling!
  createUser(name: 'Tota', age: 13, email: 'tota@gmail.com', isActive: false);
  createUser(
    name: 'Salma',
    age: 23,
    email: 'tota@gmail.com',
    isActive: false,
    nickname: "Tota",
  );
  greetUser("Malak", "Hi");
  setting(enableNotification: false, language: "Ar", theme: "Dark");

  processNumbers([12, 23, 445, 45, 45], (int n, int m, String type) {
    if (type == "sub") {
      print("$n $m");
      return n - m;
    } else if (type == "sum") {
      return n + m;
    } else {
      print("enter a valid proccessing type!");
    }
  });
  g('Dash', greeting: 'Howdy');
  print(theDifference(12, 14));
  // an empty return
  var returnNull = foo();
  print(returnNull);
}
