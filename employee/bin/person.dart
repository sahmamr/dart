class Person {
  late String id;
  late String name;
  late int age;
  late String address;

  Person({
    required this.id,
    required this.name,
    required this.age,
    required this.address,
  });

  void personData() => print('Person ID: $id, Name: $name, Age: $age');
}

class Worker {
  late String id;
  late String name;
  late String department;
  late String address;

  Worker({
    required this.id,
    required this.name,
    required this.department,
    required this.address,
  });

  void WorkerData() => print(
      'Worker ID: $id, Name: $name, department: $department, address: $address');
}
