import 'package:flutter/material.dart';

class NewTodoCreationDialog extends StatefulWidget {
  @override
  _CreationDialogState createState() => _CreationDialogState();
}

class _CreationDialogState extends State<NewTodoCreationDialog> {
  TextEditingController titleController = TextEditingController();
  TextEditingController subtitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('Crie uma nova tarefa'),
      titlePadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      children: [
        TextField(
          controller: titleController,
          decoration: InputDecoration(
            labelText: 'Título da tarefa',
            hintText: 'Digite seu título',
          ),
        ),
        TextField(
          controller: subtitleController,
          decoration: InputDecoration(
            labelText: 'Subtítulo da tarefa',
            hintText: 'Digite seu subtítulo',
          ),
        ),
        SizedBox(height: 12.0),
        FlatButton(
          onPressed: () {
            Navigator.pop(
              context,
              <String>[
                titleController.text,
                subtitleController.text,
              ],
            );
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
