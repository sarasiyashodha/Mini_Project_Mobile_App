import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'dart:io';

import '../../../providers/homework_provider.dart';

class Homework {
  String title;
  String description;
  DateTime dueDate;

  Homework({required this.title, required this.description, required this.dueDate});
}

class HomeworkForm extends StatefulWidget {
  @override
  _HomeworkFormState createState() => _HomeworkFormState();
}

class _HomeworkFormState extends State<HomeworkForm> {
  final _formKey = GlobalKey<FormState>();
  late String _title;
  late String _description;
  late DateTime _dueDate = DateTime.now();
  String _formattedDueDate = '';

  List<File> _files = [];

  Future<void> _pickFiles(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: ['pdf', 'docx', 'jpg', 'png'],
    );

    if (result != null) {
      List<File> pickedFiles = result.paths?.map((path) => File(path!)).toList() ?? [];
      HomeworkProvider homeworkProvider = Provider.of<HomeworkProvider>(context, listen: false);
      try {
        await homeworkProvider.uploadFiles(pickedFiles);
        // Show a success message or navigate to another screen
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Homework uploaded successfully')));
      } catch (error) {
        // Handle upload errors
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error uploading homework: $error')));
      }
    }
  }

  Future<void> _selectDueDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _dueDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (pickedDate != null && pickedDate != _dueDate) {
      TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        DateTime combinedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        setState(() {
          _dueDate = combinedDateTime;
          // Format the due date and update the _formattedDueDate string
          _formattedDueDate = DateFormat('MMM d, yyyy - hh:mm a').format(_dueDate);
        });
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Title'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a title';
              }
              return null;
            },
            onSaved: (value) => _title = value!,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Description'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a description';
              }
              return null;
            },
            onSaved: (value) => _description = value!,
          ),
          TextFormField(
            readOnly: true,
            decoration: InputDecoration(labelText: 'Due Date'),
            // Show the formatted due date in a Text widget
            controller: TextEditingController(text: _formattedDueDate),
            onTap: () {
              _selectDueDate(context);
            },
          ),
          ElevatedButton(
            onPressed: () async{
              // Pick files before uploading
              await _pickFiles(context);
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Create a Homework object with the entered data
                Homework homework = Homework(title: _title, description: _description, dueDate: _dueDate);

                // Upload the homework to Firestore
                uploadHomework(homework);
              }
            },
            child: Text('Upload Homework'),
          ),
        ],
      ),
    );
  }

  Future<void> uploadHomework(Homework homework) async {
    try {
      // Upload the homework to Firestore
      await FirebaseFirestore.instance.collection('homeworks').add({
        'title': homework.title,
        'description': homework.description,
        'dueDate': homework.dueDate,
        // Add other homework details as needed
      });
      // Show a success message to the user
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Homework uploaded successfully')));
    } catch (error) {
      // Handle errors (e.g., show an error message to the user)
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error uploading homework: $error')));
    }
  }
}
