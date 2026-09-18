import 'package:flutter/material.dart';
import 'package:myapp/dasar/dasar_page.dart';
import 'package:myapp/dasar/menu_page.dart';
import 'package:myapp/dasar/root_page.dart';
import 'package:myapp/views/album_page.dart';
import 'package:myapp/views/chatty_page.dart';
import 'package:myapp/views/shoes_page.dart';

void main() {
  runApp(const MyApp());
}

// membuat widget (stl, stf)
class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // fonts globlal
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      // routes untuk navigasi halaman
      routes: {
        '/': (context) => RootPage(),
        '/dasar': (context) => DasarPage(),
        '/root': (context) => RootPage(),
      },

      // home: AlbumPage(),
    );
  }
}
