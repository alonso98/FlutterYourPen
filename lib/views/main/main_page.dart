import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yourpen_1/routes/route_names.dart';
import 'package:yourpen_1/view_models/on_boarding/sign_in_viewmodel.dart';
import 'package:yourpen_1/views/main/lists/all_lists_page.dart';
import 'package:yourpen_1/views/main/settings/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final List<Widget> pages = const [
    ListsPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          spacing: 5,
          children: [
            Text(getTitleForPage(currentIndex)),
            getTitleIcon(currentIndex)
          ],
        )
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Lists"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ]
      ),
    );
  }

  String getTitleForPage(int index){
    switch (index) {
      case 0: return "Lists";
      case 1: return "Settings";
      default: return "Unknown";
    }
  }

  Icon getTitleIcon(int index){
    switch (index) {
      case 0: return const Icon(Icons.list_alt);
      case 1: return const Icon(Icons.settings);
      default: return const Icon(Icons.emoji_symbols);
    }
  }
}



















  // @override
  // Widget build(BuildContext context) {
  //   final authViewModel = Provider.of<AuthViewModel>(context);

  //   //   return Scaffold(
  //   //     appBar: AppBar(
  //   //       title: const Text('Home'),
  //   //       actions: [
  //   //         IconButton(
  //   //           icon: Icon(Icons.logout),
  //   //           onPressed: () async {
  //   //             await authViewModel.logout();
  //   //             Navigator.pushReplacementNamed(context, RouteNames.start);
  //   //           },
  //   //         ),
  //   //       ],
  //   //     ),
  //   //     body: const Center(
  //   //       child: Column(
  //   //         mainAxisAlignment: MainAxisAlignment.center,
  //   //         children: [Text("Main page")],
  //   //       ),
  //   //     ),
  //   //   );
  //   // }

  //   return DefaultTabController(
  //       length: 2,
  //       child: Scaffold(
  //         appBar: AppBar(
  //           title: const Text("Home"),
  //           // actions: [
  //           //   IconButton(
  //           //     icon: Icon(Icons.logout),
  //           //     onPressed: () async {
  //           //       await authViewModel.logout();
  //           //       Navigator.pushReplacementNamed(context, RouteNames.start);
  //           //     },
  //           //   ),
  //           // ],
  //           bottom: const TabBar(
  //             tabs: [
  //               Tab(text: "Lists",),
  //               Tab(text: "Settings",)
  //             ]
  //           ),
  //         ),
  //         body: TabBarView(children: [
  //           ListsPage(),
  //           SettingsPage(key: key)
  //         ]),
  //       )
  //     );
  // }
