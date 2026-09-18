import 'package:flutter/material.dart';
import 'package:myapp/services/notes_service.dart';
import 'package:myapp/utils/constant.dart';

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

  NotesService notesService = NotesService();

  @override
  Widget build(BuildContext context) {
    // ambil data dari arguments
    final args = ModalRoute.of(context)!.settings.arguments as List<String>;

    // jika args ada
    if (args.isNotEmpty) {
      titleController.text = args[1];
      contentController.text = args[2];
    }

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
                  if (!validateTitle && !validateContent) {
                    bool res = await notesService.updateData(
                      args[0],
                      titleController.text,
                      contentController.text,
                    );
                    if (res) {
                      showSnackBar(context, "Berhasil update data");
                      Navigator.pushNamed(context, "/notes");
                    } else {
                      showSnackBar(context, "Gagal update data");
                    }
                  }
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
