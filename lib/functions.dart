//implementing a function:
bool isAGirl({required int arrange, String name = "unknown"}) {
  if (arrange == 1) {
    return true;
  } else {
    return false;
  }
}

//void function "return nothing"
void printFunction(String name) {
  print("Hello, $name");
}

//named parameter example
void createUser({
  required String name,
  required int age,
  required String email,
  bool isActive = true, // Optional with default
  String? nickname, // Optional nullable
}) {
  print('Creating user: $name, Age: $age');
}

//Positional Optional:
void greetUser(String name, [String greeting = "Hello"]) {
  print("$greeting $name");
}

//Named Optional
void setting({
  String theme = "Dark",
  String language = "En",
  bool? enableNotification,
}) {
  print('''your settings are:
Theme: $theme,
Language: $language,
Notification: $enableNotification,
''');
}

// High order function
// assign a function as a prameter
// assign a function to a variable
List<int> results = [];
void processNumbers(
  List<int> numbers,
  Function(int num1, int num2, String type) processor,
) {
  for (int number in numbers) {
    results.add(processor(number, number - 2, "sum"));
  }
  print(results);
}

//document example in function types
void greet(String name, {String greeting = 'Hello'}) =>
    print('$greeting $name!');

// Store `greet` in a variable and call it.
void Function(String, {String greeting}) g = greet;

// Anonymous functions (with positional parameters)
dynamic Function(int number1, int number2) theDifference = (number1, number2) {
  if (number1 >= number2) {
    return number1 - number2;
  } else {
    return number2 - number1;
  }
};
// Anonymous functions (with named parameters) in arrow notation
dynamic Function({int number1, int number2, int? number3}) sum =
    ({number1 = 0, number2 = 0, number3}) =>
        number3 != null ? number1 + number2 + number3 : number1 + number2;
//arrow functions examples
//1- with position params
var arrowfuncPos = (String param1, String param2) =>
    print("arrow functions return: $param1, $param2");
//2- with optional position params
var arrowfuncPosOp = (String? param1, [String param2 = "param2"]) =>
    print("arrow functions return: $param1, $param2");
//3- with named params
var arrowfuncNam = ({required String param1, required String param2}) =>
    print("arrow functions return: $param1, $param2");
//4- with optional named params
var arrowfuncNamOp = ({String? param1, String param2 = "pram2"}) =>
    print("arrow functions return: $param1, $param2");

// Lexical scope
void outerFunction() {
  String message = 'Hello from outer!';

  void innerFunction() {
    print(message); // Can access outer variable
    String innerMessage = 'Hello from inner!';
  }

  innerFunction();
  //print(innerMessage);  // Error! Can't access inner variable
}
// Lexical Closures
/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void main() {
  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}
