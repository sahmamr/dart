import 'person.dart';

class Student extends Person {
  late String phone;
  late String email;

  Map<String, double> subjects = {};

  Student(
      {required String id,
      required String name,
      required int age,
      required String address,
      required this.phone,
      required this.email})
      : super(
          id: id,
          name: name,
          age: age,
          address: address,
        );

  void addSubject({required String name, required double grade}) {
    subjects[name] = grade;
  }

  void studentData() {
    print(
        '\nstudent-id: $id, Name: $name, Age: $age, Address: $address, Email: $email, phone: $phone');
    subjects.isNotEmpty
        ? print('student $name Subject')
        : print('student, $name does not belong to any subject\n');
    subjects.forEach((key, value) {
      print('$key: $value');
    });
  }
}
