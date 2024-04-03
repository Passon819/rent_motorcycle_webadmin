import 'package:flutter/material.dart';
import 'package:rent_motorcycle_webadmin/screens/homeaccounts.screen.dart';
import 'package:rent_motorcycle_webadmin/screens/reports.screen.dart';
import 'package:rent_motorcycle_webadmin/screens/waitapprove.screen.dart';

class MenusWidget extends StatefulWidget {
  const MenusWidget({super.key});

  @override
  State<MenusWidget> createState() => _MenusWidgetState();
}

class _MenusWidgetState extends State<MenusWidget> {
  int _currentIndex = 0;
  bool isExpanded = true;
  final screen = [
    const HomeAccountsScreen(),
    const WaitApproveScreen(),
    const ReportsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _currentIndex,
            extended: isExpanded,
            onDestinationSelected: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            backgroundColor: const Color.fromARGB(255, 4, 26, 48),
            unselectedIconTheme:
                const IconThemeData(color: Colors.white, opacity: 1),
            unselectedLabelTextStyle: const TextStyle(
              color: Colors.white,
            ),
            selectedIconTheme: const IconThemeData(
              color: Color.fromARGB(255, 4, 26, 48),
            ),
            selectedLabelTextStyle: const TextStyle(
              color: Colors.white,
            ),
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text("Home Accounts"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.watch_later_outlined),
                label: Text("Wait Approve"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bar_chart),
                label: Text("Reports"),
              ),
            ],
            trailing: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                icon: Icon(isExpanded
                    ? Icons.arrow_back_ios
                    : Icons.arrow_forward_ios),
              ),
            ),
          ),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                title: Text('Rental Motorcycle Admin'),
                backgroundColor: Color.fromARGB(255, 175, 213, 238),
                actions: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Logout'),
                  )
                ],
              ),
              body: screen[_currentIndex],
            ),
          )
        ],
      ),
    );
  }
}
