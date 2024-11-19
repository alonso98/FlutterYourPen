import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yourpen_1/routes/route_names.dart';
import 'package:yourpen_1/view_models/on_boarding/sign_in_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await authViewModel.logout();
              Navigator.pushReplacementNamed(context, RouteNames.start);
            },
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Main page")],
        ),
      ),
    );
  }
}
