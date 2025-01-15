import 'package:flutter/material.dart';
import 'package:flutter_gradient_button/flutter_gradient_button.dart';
import 'package:provider/provider.dart';
import 'package:yourpen_1/routes/route_names.dart';
import 'package:yourpen_1/view_models/lists/all_lists_viewmodel.dart';
import 'package:yourpen_1/view_models/settings/settings_viewmodel.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<SettingsViewmodel>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await vm.signOut();
                await Navigator.pushReplacementNamed(context, RouteNames.start);
              }, 
              child: const Text("Sign out"))
          ],
        ),
      ),
    );
  }
}
