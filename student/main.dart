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
      email: 'a.alian@gmail.com');
  allstds.addStudent(
      id: '4',
      name: 'Lian Amr',
      age: 26,
      address: 'Tla"a al-ali',
      phone: '+9627912121212',
      email: 'lian@hotmail.com');

  allstds.removeStudent('3');
  allstds.addSubject('1', 'Physics', 51);
  allstds.addSubject('2', 'Math', 49);
  allstds.addSubject('4', 'Arabic', 44);
  allstds.printStudentData();
  allstds.calculateStudentGrade('1');
}
