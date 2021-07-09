import 'dart:io';
import 'allstudents.dart';

void main(List<String> arguments) {
  var allstds = Students();
  allstds.addStudent(
      id: '2',
      name: 'Abdullah Saqer',
      age: 28,
      address: 'Amman',
      phone: '0777775000',
      email: 'a.saqer@gmail.com');
  allstds.addStudent(
      id: '1',
      name: 'Sahm',
      age: 26,
      address: 'Khalda',
      phone: '+962790414101',
      email: 'sahm_amr@hotmail.com');
  allstds.addStudent(
      id: '3',
      name: 'Abdullah Alian',
      age: 26,
      address: 'Lubban',
      phone: '+96279000000000',
      email: 'sahm_amr@hotmail.com');

  allstds.removeStudent('3');
  allstds.addSubject('2', 'Physics', 51);
  allstds.printStudentData();
  allstds.calculateStudentGrade('1');
}
