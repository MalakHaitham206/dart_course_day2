// ignore_for_file: unused_local_variable

void listFuc() {
  
  var list1 = [1, 2, 3];
  //question: can i add a string to this list?
  // Method 1: Direct initialization
  List<int> numbers = [1, 2, 3, 4, 5];
  // Method 2: Using List constructor
  List<String> names = List.filled(3, 'Unknown');
  // Method 3: Empty list

  List<double> prices = [];
  var pricesWithVar = [];
  // Method 4: Growable vs Fixed
  List<int> fixedList = List.filled(5, 0); // Fixed size
  var list = List.filled(5, "hello", growable: true); //Growable
  var growableList = <int>[]; //Growable

  List<String> fruits = ['apple', 'banana', 'orange'];

  // Adding elements
  fruits.add('grape'); // Add single item
  fruits.addAll(['kiwi', 'mango']); // Add multiple items
  fruits.insert(1, 'strawberry'); // Insert at specific index

  // Removing elements
  fruits.remove('banana'); // Remove by value
  fruits.remove('malak'); // Remove by value but the value not found
  fruits.removeAt(0); // Remove by index
  fruits.removeLast();

  List<int> numberstoTryAccess = [1, 2, 3, 4, 5];

  // Access
  print(numberstoTryAccess[0]); // First element
  print(numberstoTryAccess.first); // First element (safe)
  print(numberstoTryAccess.last); // Last element

  // Query
  print(numberstoTryAccess.length); // Size
  print(numberstoTryAccess.isEmpty); // Check if empty
  print(numberstoTryAccess.contains(3)); // Check if contains value


  // where() - Filter items (like JS filter)
  List<int> evenNumbers = numbers.where((n) => n % 2 == 0).toList();
  // Result: [2, 4]

  // map() - Transform items (like JS map)
  List<String> numberStrings = numbers.map((n) => 'Number: $n').toList();
  // Result: ['Number: 1', 'Number: 2', ...]

  // Combined filtering and transformation
  List<String> evenNumberStrings = numbers
      .where((n) => n % 2 == 0)
      .map((n) => 'Even: $n')
      .toList();
}
