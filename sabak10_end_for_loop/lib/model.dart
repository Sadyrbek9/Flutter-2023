import 'package:flutter/material.dart';

class student {
  student(
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

final danyar = student(
    id: 1,
    name: 'Danyar',
    surname: 'Askarov',
    age: 23,
    email: 'danyar@mail.com',
    group: 2,
    address: 'Bishkek',
    gender: 'male');

final azamat = student(
    id: 2,
    name: 'Azamat',
    surname: 'Asanov',
    age: 20,
    phone: '+996777887766',
    email: 'azamat@mail.com',
    group: 1);
final aibek = student(
    id: 3,
    name: 'Aibek',
    surname: 'Esenov',
    age: 24,
    email: 'aibek@mail.com',
    group: 3,
    address: 'Jalal-Abad');
final dinara = student(
    id: 4,
    name: 'Dinara',
    surname: 'Alymova',
    age: 24,
    email: 'dinara@mail.com',
    group: 5,
    marriage: 'single');
final ainura = student(
    id: 5,
    name: 'Ainura',
    surname: 'Asanova',
    age: 20,
    email: 'ainura@mail.com',
    group: 4,
    gender: 'female',
    address: 'Osh');

List studentter = <student>[danyar, azamat, aibek, dinara, ainura];
