import 'package:cobaflutterpfm/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<Widget> views = [
    DashboardScreen(),
    Center(
      child: Text('Account'),
    ),
    Center(
      child: Text('Settings'),
    ),
    Center(
      child: Text('Logout'),
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNavigationBar(
            header: SideNavigationBarHeader(
                image: Image.asset(
                  "assets/images/Logo-Bank-BNI-PNG.png",
                  height: 50,
                  width: 70,
                ),
                title: const Text(
                  'Personal Finance Management',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: const Text("")),
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.dashboard,
                label: 'Dashboard',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'Account',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Settings',
              ),
              SideNavigationBarItem(
                icon: Icons.logout,
                label: 'Logout',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            theme: SideNavigationBarTheme(
              backgroundColor: Color.fromARGB(255, 34, 34, 34),
              itemTheme: SideNavigationBarItemTheme(
                  unselectedItemColor: Colors.white,
                  selectedItemColor: Colors.orange),
              togglerTheme: const SideNavigationBarTogglerTheme(
                expandIconColor: Colors.white,
                shrinkIconColor: Colors.white,
              ),
              dividerTheme: SideNavigationBarDividerTheme.standard(),
            ),
            toggler: const SideBarToggler(
              expandIcon: Icons.chevron_right,
              shrinkIcon: Icons.chevron_left,
            ),
          ),
          Expanded(
            child: views.elementAt(selectedIndex),
          ),
        ],
      ),
    );
  }
}
