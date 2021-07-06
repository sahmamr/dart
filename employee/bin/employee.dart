import './person.dart';

class Employee extends Person {
  String? phone;

  Employee(
      {required String id,
      required String name,
      required String department,
      required String address,
      this.phone})
      : super(
          id: id,
          name: name,
          department: department,
          address: address,
        );

  @override
  void personData() {
    print('Phone: $phone');
    super.personData();
  }
}

class EmployeeList {
  List<Employee> emp = [];

  void addEmployee({
    required String id,
    required String name,
    required String department,
    required String address,
    String? phone,
  }) {
    emp.add(Employee(
      id: id,
      name: name,
      department: department,
      address: address,
      phone: phone,
    ));
  }

  void removeEmployee(String id) {
    emp.removeWhere((Employee) => Employee.id == id);
  }

  void EmployeeData(String id) {
    emp.forEach((element) {
      if (element.id == id) {
        element.personData();
      }
      ;
    });
  }
}
