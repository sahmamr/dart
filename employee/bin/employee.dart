import './person.dart';

class Employee extends Worker {
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
  void WorkerData() {
    print('Phone: $phone');
    super.WorkerData();
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

  void WorkerData() {
    emp.forEach((element) {
      element.WorkerData();
    });
  }
}
