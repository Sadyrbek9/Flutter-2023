// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Todo {
  Todo(
      {required this.title,
      required this.description,
      required this.isCompleted,
      required this.author});
  final String title;
  final String description;
  final bool isCompleted;
  final String author;

  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
      'author': author,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      isCompleted: map['isCompleted']?? false,
      author: map['author'] ?? '', 
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) => Todo.fromMap(json.decode(source) as Map<String, dynamic>);
}
