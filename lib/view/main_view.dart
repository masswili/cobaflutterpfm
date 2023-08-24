import 'package:cobaflutterpfm/view/dashboard_view.dart';
import 'package:cobaflutterpfm/view/financial_accounts_view.dart';
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
    FinancialAccountsPage(),
    const Center(
      child: Text('Budget'),
    ),
    const Center(
      child: Text('Tranksaksi'),
    ),
  ];

  int selectedIndex = 0;
  bool isSearching = false;
  // TextEditingController searchController = TextEditingController();

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
        preferredSize: const Size.fromHeight(56.0), // Tinggi AppBar
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 34, 34),
          title: isSearching
              ? const TextField(
                  // controller: searchController,
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
                        // searchController.clear();
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
                // Logika
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
                    title: const Text('Profile Page'),
                    subtitle:
                        Text('$username\n$email'), // Menampilkan nama dan email
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
                  // Tambahkan logika untuk tautan ke halaman profil
                  print('Pergi ke halaman profil');
                } else if (value == 'logout') {
                  // Tambahkan logika untuk logout
                  print('Logout');
                }
              },
              child: const Row(
                children: [
                  CircleAvatar(
                    // Ikon pengguna (profil)
                    backgroundImage: NetworkImage(
                      "assets/images/Profile.jpeg",
                    ),
                  ),
                  SizedBox(width: 8), // Spasi antara ikon dan nama
                  Icon(Icons.keyboard_arrow_down), // Panah ke bawah
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
