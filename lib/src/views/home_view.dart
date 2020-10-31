import 'package:flutter/material.dart';

import '../widgets/new_todo_creation_dialog.dart';
import '../widgets/todo.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  List<Widget> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: todos,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => openTodoCreationDialog(context),
        tooltip: 'Create new todo',
        child: Icon(Icons.add),
      ),
    );
  }

  void openTodoCreationDialog(BuildContext context) async {
    List<String> res = await showDialog(
        context: context,
        builder: (context) {
          return NewTodoCreationDialog();
        });

    setState(() => todos.add(Todo(title: res[0], subtitle: res[1])));
  }
}
