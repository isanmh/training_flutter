import 'package:flutter/material.dart';
import 'package:myapp/dasar/dasar_page.dart';

class MenuPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // cara 1 (tidak menggunakan routes)
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => DasarPage()));

                // Cara 2 (menggunakan routes)
                Navigator.pushNamed(context, '/dasar');
              },
              child: Text("Dasar Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/root');
              },
              child: Text("Root Page"),
            ),
          ],
        ),
      ),
    );
  }
}
