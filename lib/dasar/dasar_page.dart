import 'package:flutter/material.dart';

class DasarPage extends StatefulWidget {
  const new({super.key});

  @override
  State<DasarPage> createState() => _DasarPageState();
}

class _DasarPageState extends State<DasarPage> {
  // variable untuk switch
  bool isSwitch = false;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("L O G O")),
        titleTextStyle: TextStyle(
          color: Colors.purple,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.purple,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            color: Colors.purple,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add),
            color: Colors.purple,
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset("assets/images/logo.png"),
            Divider(color: Colors.black),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(40),
              color: isSwitch ? Colors.purple : Colors.blue,
              child: Text(
                "Text 1",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Elevated Button, Outlinded Button, Text Button
            ElevatedButton(
              onPressed: () {
                print("Elevated Button pressed");
              },
              child: Text("Elevated Button"),
              style: ElevatedButton.styleFrom(
                backgroundColor: (isChecked == false)
                    ? Colors.purple
                    : Colors.blue,
                foregroundColor: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {
                print("Text Button pressed");
              },
              child: Text("Text Button"),
            ),
            OutlinedButton(
              onPressed: () {
                print("Outlined Button pressed");
              },
              child: Text("Outlined Button"),
            ),
            SizedBox(height: 20),
            // Row, GestureDetector
            GestureDetector(
              onTap: () {
                print("Icon row di klik");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.ac_unit),
                  Icon(Icons.data_array),
                  Icon(Icons.ac_unit),
                ],
              ),
            ),
            // switch, checkbox
            Switch(
              value: isSwitch,
              onChanged: (bool newValue) {
                setState(() {
                  isSwitch = newValue;
                });
              },
            ),
            Checkbox(
              value: isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
