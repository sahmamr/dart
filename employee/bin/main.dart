import 'dart:io';

import 'employee.dart';

void main(List<String> args) {
  var emp = EmployeeList();

  lable:
  while (true) {
    print('1. add');
    print('2. remove');
    print('3. data');
    print('4. end');
    var op = stdin.readLineSync()!;

    switch (op) {
      case '1':
        print('Enter Employee Data as : id,name,department,address,phone');
        var data = stdin.readLineSync()!.split(',');
        emp.addEmployee(
          id: data[0],
          name: data[1],
          department: data[2],
          address: data[3],
          phone: data[4],
        );
        break;
      case '2':
        print('Enter Employee id');
        var id = stdin.readLineSync()!;
        emp.removeEmployee(id);
        break;
      case '3':
        print('Enter Employee id');
        var id = stdin.readLineSync()!;
        emp.EmployeeData(id);
        break;
      case '4':
        break lable;
      default:
    }
  }
}
