class Person {
  late String id;
  late String name;
  late String department;
  late String address;

  Person({
    required this.id,
    required this.name,
    required this.department,
    required this.address,
  });

  void personData() =>
      print('Person ID: $id, Name: $name, department: $department');
}
