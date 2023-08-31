import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';

import 'budget_view.dart';
import 'dashboard_view.dart';
import 'financial_accounts_view.dart';
import 'transaction.dart';

void main() {
  runApp(const MaterialApp(
    home: MainView(),
  ));
}

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  TextEditingController _textFieldController = TextEditingController();
  String _dummyData = ""; // Data dummy yang akan ditampilkan

  void _showProfileModal() {
    showDialog(
      context: context,
      barrierDismissible:
          false, // Modal hanya dapat ditutup dengan tombol "Tutup"
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Profile'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _textFieldController,
                decoration: InputDecoration(labelText: 'Input Data'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _dummyData = _textFieldController.text;
                  });
                  Navigator.of(context).pop();
                },
                child: Text('Simpan'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Tutup'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _textFieldController.dispose(); // Pastikan untuk membebaskan controller
    super.dispose();
  }

  bool _isProfileModalVisible = false;

  List<Widget> views = [
    DashboardScreen(),
    const FinancialAccountsPage(),
    const BudgetPage(),
    const Transactionpage(),
  ];

  int selectedIndex = 0;
  bool isSearching = false;

  final List<String> notifications = [
    "Notification 1",
    "Notification 2",
    "Notification 3",
  ];

  final String username = "Mr. Achmad Syirod";
  final String email = "user@example.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 34, 34),
          title: isSearching
              ? const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                )
              : const Text(
                  'Personal Finance Management',
                  style: TextStyle(color: Colors.white),
                ),
          actions: [
            isSearching
                ? IconButton(
                    icon: const Icon(Icons.cancel),
                    onPressed: () {
                      setState(() {
                        isSearching = false;
                      });
                    },
                  )
                : IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      setState(() {
                        isSearching = true;
                      });
                    },
                  ),
            PopupMenuButton<String>(
              icon: const Icon(Icons.notifications),
              offset: const Offset(0, 40),
              onSelected: (String value) {
                print("Notifikasi dipilih: $value");
              },
              itemBuilder: (BuildContext context) {
                return notifications.map((String notification) {
                  return PopupMenuItem<String>(
                    value: notification,
                    child: Text(notification),
                  );
                }).toList();
              },
            ),
            PopupMenuButton<String>(
              offset: const Offset(0, 40),
              itemBuilder: (BuildContext context) => [
                PopupMenuItem<String>(
                  value: 'profile',
                  child: ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Profile'),
                    subtitle: Text('$username\n$email'),
                    onTap: () {
                      _showProfileModal();
                    },
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'logout',
                  child: ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Logout'),
                  ),
                ),
              ],
              onSelected: (String value) {
                if (value == 'profile') {
                  _showProfileModal();
                } else if (value == 'logout') {
                  print('Logout');
                }
              },
              child: const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "assets/images/Profile.jpeg",
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          SideNavigationBar(
            header: SideNavigationBarHeader(
                image: Image.asset(
                  "assets/images/Logo-Bank-BNI-PNG.png",
                  height: 70,
                  width: 200,
                ),
                title: const Text(
                  '',
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
                icon: Icons.people,
                label: 'Users Account Financial',
              ),
              SideNavigationBarItem(
                icon: Icons.money,
                label: 'Budget',
              ),
              SideNavigationBarItem(
                icon: Icons.handshake,
                label: 'Transaksi',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            theme: SideNavigationBarTheme(
              backgroundColor: const Color.fromARGB(255, 34, 34, 34),
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
