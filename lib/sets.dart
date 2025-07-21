// ignore_for_file: unused_local_variable
void setFunc() {
  // Creating sets
  Set<dynamic> uniqueNames = {'Alice', 'Bob', 'Charlie', 8, "8"};
  //Create an empty set
  Set<int> emptySet = {};
  //this is a map not a set!
  var emptyWithVar = {};
  var emptySetWithVar = const <String>{"malak"};

  print(emptySetWithVar);
  // emptySetWithVar.add("haitham");
  Set<int> numbers = {1, 2, 3, 4, 5};
  Set<int> numbers2 = {133, 245, 354, 434, 34};
  //Question: What are the elements in the ID set?
  //Question: Can I set a string element to a set of integers?

  // Adding duplicates or different type (ignored)
  uniqueNames.add('Alice'); // No effect
  print(uniqueNames); // Still 3
  numbers.addAll(numbers2);

  //Set operations
  Set<int> set1 = {1, 2, 3};
  Set<int> set2 = {3, 4, 5};
  var operation = set1.join();
  print("operation: $operation");
  Set<int> union = set1.union(set2);
  Set<int> intersection = set1.intersection(set2);
  Set<int> difference = set1.difference(set2);
  numbers.addAll(numbers2);
  //Question: What output do you expect each variable to have when printed?

  print(union);
  print(intersection);
  print(difference);
  print(numbers);
}
