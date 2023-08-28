import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sabak34_firebase_2/model.dart';

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
// 
  Future <void> addToDo ()async {
    final db = FirebaseFirestore.instance;
    final todos = Todo(
      title: _titleController.text, 
      description: _descriptionController.text, 
      isCompleted: isCompleted, 
      author: _authorController.text);
      await db.collection('todos').add(todos.toMap());
  }
  
  

  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoView'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          top: 15,
          right: 10,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Write title';
                  } else {
                    return null;
                  }
                },
                controller: _titleController,
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
                maxLines: 8,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  hintText: 'Description',
                ),
              ),
              CheckboxListTile(
                value: isCompleted,
                onChanged: (v) {
                  setState(
                    () {
                      isCompleted = v!;
                    },
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Write Author';
                  }
                  return null;
                },
                controller: _authorController,
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
                  backgroundColor: Colors.grey,
                ),
                onPressed: () async{
                  if (_formKey.currentState!.validate()) {
                    // formanyn i4i tolso
                    await addToDo();
                  } else {
                    null;
                  }
                },
                icon: const Icon(Icons.arrow_upward, color: Colors.white),
                label: const Text(
                  'Отправить',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
