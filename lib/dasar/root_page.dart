import 'package:flutter/material.dart';
import 'package:myapp/dasar/dasar_page.dart';
import 'package:myapp/dasar/menu_page.dart';
import 'package:myapp/views/chatty_page.dart';

class RootPage extends StatefulWidget {
  const new({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // ini untuk navbar
  int currentPage = 0;

  // list widget untuk navbar
  List<Widget> pages = [MenuPage(), DasarPage(), ChattyPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Root Page'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        // automaticallyImplyLeading: false,
      ),
      drawer: Drawer(),
      endDrawer: Drawer(),
      // Bottom Navigation Bar
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.search), label: "Search"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
        onDestinationSelected: (index) {
          // print("index: $index");
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
      body: pages[currentPage],
    );
  }
}
