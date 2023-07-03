import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabak_firebase_copy2/model.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  bool isCompleted = false;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
///////////////////////////////////////////
  ///
  ///
  Future<void> addTodo() async {
    final db = FirebaseFirestore.instance;
    final todos = Todo(
        title: _titleController.text,
        description: _descriptionController.text,
        isCompleted: isCompleted,
        author: _authorController.text);
    await db.collection('todos').add(
          todos.toMap(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TodoView'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 25,
          right: 20,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Write title';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  hintText: 'Title',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Write description';
                  } else {
                    return null;
                  }
                },
                controller: _descriptionController,
                maxLines: 10,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  hintText: 'Description',
                ),
              ),
              CheckboxListTile(
                  value: isCompleted,
                  onChanged: (v) {
                    setState(() {
                      isCompleted = v!;
                    });
                  }),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _authorController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Write author';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  hintText: 'Author',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 107, 95, 95),
                ),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                            backgroundColor: Colors.white.withOpacity(0.5),
                            title: const Text('Сиздин маалыматыныз жонотулуудо',
                            ),
                            children: [CupertinoActivityIndicator(
                              radius: 20, color: Colors.blue.withOpacity(0.5),
                            ),],
                          );
                        });
                    await addTodo();
                    // ignore: use_build_context_synchronously
                    Navigator.popUntil(context, (route) => route.isFirst);
                  } else {
                    null;
                  }
                },
                icon: const Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                ),
                label: const Text(
                  'Отправить',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
