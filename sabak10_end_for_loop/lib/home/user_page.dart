import 'package:flutter/material.dart';
import 'package:sabak10_end_for_loop/model.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key, required this.student});
final Student student;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserPage'),
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(student.image)),
          ),
          Text(student.id.toString()),
          Text(student.name),
          Text(student.surname),
          Text(student.age.toString()),
          Text(student.phone.toString()),
          Text(student.email),
          Text(student.group.toString()),
          Text(student.address.toString()),
          Text(student.gender ?? ""),
          Text(student.marriage ?? 'Пустой'),

        ],
      ),
    );
  }
}