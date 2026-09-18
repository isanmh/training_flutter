import 'package:flutter/material.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key});

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  // validasi
  bool validateTitle = false;
  bool validateContent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Note"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Title',
                  errorText: validateTitle ? "Title required" : null,
                ),
                controller: titleController,
              ),
              TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: 'Content',
                  errorText: validateContent ? "Content required" : null,
                ),
                controller: contentController,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                ),
                onPressed: () async {
                  setState(() {
                    titleController.text.isEmpty
                        ? validateTitle = true
                        : validateTitle = false;
                    contentController.text.isEmpty
                        ? validateContent = true
                        : validateContent = false;
                  });
                  // validasi jika benar
                  print("Title: ${titleController.text}");
                  print("Content: ${contentController.text}");
                },
                child: Text("Update Note"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
