
class Student {
  Student(
      {required this.id,
      required this.name,
      required this.surname,
      required this.age,
      this.phone,
      required this.email,
      this.address,
      required this.group,
      this.gender,
      this.marriage});

  final int id;
  final String name;
  final String surname;
  int age;
  String? phone;
  final String email;
  final String? address;
  int group;
  final String? gender;
  String? marriage;
}

final danyar = Student(
    id: 1,
    name: 'Danyar',
    surname: 'Askarov',
    age: 23,
    email: 'danyar@mail.com',
    group: 2,
    address: 'Bishkek',
    gender: 'male');

final azamat = Student(
    id: 2,
    name: 'Azamat',
    surname: 'Asanov',
    age: 20,
    phone: '+996777887766',
    email: 'azamat@mail.com',
    group: 1);
final aibek = Student(
    id: 3,
    name: 'Aibek',
    surname: 'Esenov',
    age: 24,
    email: 'aibek@mail.com',
    group: 3,
    address: 'Jalal-Abad');
final dinara = Student(
    id: 4,
    name: 'Dinara',
    surname: 'Alymova',
    age: 24,
    email: 'alymova@mail.com',
    group: 5,
    marriage: 'single');
final ainura = Student(
    id: 5,
    name: 'Ainura',
    surname: 'Asanova',
    age: 20,
    email: 'ainura@mail.com',
    group: 4,
    gender: 'female',
    address: 'Osh');

List studentter = <Student>[danyar, azamat, aibek, aibek, dinara, ainura];
