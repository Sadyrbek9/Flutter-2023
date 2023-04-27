import 'package:flutter/material.dart';

class Student {
  Student(
      {required this.id,
      required this.image,
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
  final String image;
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
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU9A3lVYOC4si9DhDmvSyhx_N1cmN4Qw_Smw&usqp=CAU",
    name: 'Danyar',
    surname: 'Askarov',
    age: 23,
    email: 'danyar@mail.com',
    group: 2,
    address: 'Bishkek',
    gender: 'male');

final azamat = Student(
    id: 2,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU9A3lVYOC4si9DhDmvSyhx_N1cmN4Qw_Smw&usqp=CAU",
    name: 'Azamat',
    surname: 'Asanov',
    age: 20,
    phone: '+996777887766',
    email: 'azamat@mail.com',
    group: 1);
final aibek = Student(
    id: 3,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU9A3lVYOC4si9DhDmvSyhx_N1cmN4Qw_Smw&usqp=CAU",
    name: 'Aibek',
    surname: 'Esenov',
    age: 24,
    email: 'aibek@mail.com',
    group: 3,
    address: 'Jalal-Abad');
final dinara = Student(
    id: 4,
    image: "https://play-lh.googleusercontent.com/Mn3MQpRkZkXzJXwktUWBmSYPCdGFlFzerOZV0oe4oYL5RkJVOtHLKQCiBkrUMTlI9g",
    name: 'Dinara',
    surname: 'Alymova',
    age: 24,
    email: 'dinara@mail.com',
    group: 5,
    marriage: 'single');
final ainura = Student(
    id: 5,
    image: "https://www.google.com/search?q=girl&tbm=isch&ved=2ahUKEwiR3Nno9rv-AhWT7qQKHcCtD1YQ2-cCegQIABAA&oq=girl&gs_lcp=CgNpbWcQAzIHCAAQigUQQzIFCAAQgAQyBwgAEIoFEEMyBQgAEIAEMgUIABCABDIHCAAQigUQQzIHCAAQigUQQzIFCAAQgAQyBwgAEIoFEEMyBQgAEIAEOgQIIxAnOgcIIxDqAhAnUNVAWLJdYMdpaAFwAHgAgAH5IogB7SaSAQc0LjEuOS0xmAEAoAEBqgELZ3dzLXdpei1pbWewAQrAAQE&sclient=img&ei=dgFDZJHJLpPdkwXA276wBQ&bih=657&biw=1366#imgrc=eoq9I55efdglLM",
    name: 'Ainura',
    surname: 'Asanova',
    age: 20,
    email: 'ainura@mail.com',
    group: 4,
    gender: 'female',
    address: 'Osh');

List studentter = <Student>[danyar, azamat, aibek, dinara, ainura];
