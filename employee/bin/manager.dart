import './person.dart';

class Manager extends Person {
  String? phone;

  Manager(
      {required String id,
      required String name,
      required int age,
      required String address,
      this.phone})
      : super(
          id: id,
          name: name,
          age: age,
          address: address,
        );

  @override
  void personData() {
    print('Phone: $phone');
    super.personData();
  }
}

class Managers {
  List<Manager> mng = [];

  void addManager({
    required String id,
    required String name,
    required int age,
    required String address,
    String? phone,
  }) {
    mng.add(Manager(
      id: id,
      name: name,
      age: age,
      address: address,
      phone: phone,
    ));
  }

  void removeManager(String id) {
    mng.removeWhere((manager) => manager.id == id);
  }

  void managerData() {
    mng.forEach((element) {
      element.personData();
    });
  }
}
