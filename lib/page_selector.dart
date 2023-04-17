import 'package:dayzer_task_app/pages/files_page.dart';
import 'package:dayzer_task_app/pages/home_page.dart';
import 'package:dayzer_task_app/pages/message_page.dart';
import 'package:dayzer_task_app/pages/settings_page.dart';
import 'package:flutter/material.dart';

class PageSelector extends StatefulWidget {
  const PageSelector({super.key});

  @override
  State<PageSelector> createState() => _PageSelectorState();
}

class _PageSelectorState extends State<PageSelector> {
  //selecteditem(page)
  int _selectedItem = 0;

  //List of pages(items) available on the navigationbar
  final List<Widget> pages = [
    const HomePage(),
    const FilesPage(),
    const MessagePage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedItem],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(indicatorColor: Colors.white),
        child: NavigationBar(
          elevation: 20,
            height: 60,
            backgroundColor: Colors.white,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedItem = index;
              });
            },
            selectedIndex: _selectedItem,
            destinations: const [
              NavigationDestination(
                  selectedIcon: Icon(Icons.home),
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                  ),
                  label: 'home'),
              NavigationDestination(
                  selectedIcon: Icon(Icons.folder_copy),
                  icon: Icon(
                    Icons.folder_copy_outlined,
                    color: Colors.grey,
                  ),
                  label: 'files'),
              NavigationDestination(
                  selectedIcon: Icon(Icons.message),
                  icon: Icon(
                    Icons.message_outlined,
                    color: Colors.grey,
                  ),
                  label: 'message'),
              NavigationDestination(
                  selectedIcon: Icon(Icons.calendar_month),
                  icon: Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.grey,
                  ),
                  label: 'settings')
            ]),
      ),
    );
  }
}
