import 'student.dart';

class Students {
  List<Student> students = [];

  void addStudent(
      {required String id,
      required String name,
      required int age,
      required String address,
      required String phone,
      required String email}) {
    students.add(Student(
        id: id,
        name: name,
        age: age,
        address: address,
        phone: phone,
        email: email));
  }

  void removeStudent(String id) {
    students.removeWhere((student) => student.id == id);
  }

  void printStudentData([String? id]) {
    if (id != null) {
      try {
        print('Student $id Info:');
        var std = students.firstWhere((student) => student.id == id);
        std.studentData();
      } catch (err) {
        print(err);
      }
    } else {
      students.isNotEmpty ? print('Students Info:') : print('No Result');
      students.forEach((student) {
        student.studentData();
      });
    }
  }

  void addSubject(String id, String name, double grade) {
    try {
      var std = students.firstWhere((student) => student.id == id);
      std.addSubject(name: name, grade: grade);
    } catch (err) {
      print(err);
    }
  }

  void calculateStudentGrade([String? id]) {
    if (id != null) {
      var std = students.firstWhere((student) => student.id == id);
      var stdfail = false;
      std.subjects.forEach((name, grade) {
        if (grade > 50) {
          stdfail = true;
        }
      });
      if (stdfail) {
        print('Congratulations, Student $id PASSED');
      } else {
        std.subjects.forEach((name, grade) {
          print('$name: $grade');
        });
      }
    }
  }
}
