import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yourpen_1/routes/routes.dart';
import 'package:yourpen_1/themes/light_theme.dart';
import 'package:yourpen_1/utils/notifier/notifier.dart';
import 'package:yourpen_1/utils/notifier/snackbar_notifier.dart';
import 'package:yourpen_1/view_models/lists/all_lists_viewmodel.dart';
import 'package:yourpen_1/view_models/on_boarding/sign_in_viewmodel.dart';
import 'package:yourpen_1/view_models/settings/settings_viewmodel.dart';
import 'package:yourpen_1/views/splash_screen.dart';

void main() {
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  
  runApp(
    MultiProvider(
      providers: [
        Provider<Notifier>(create: (_) => SnackbarNotifier(scaffoldMessengerKey: scaffoldMessengerKey)),
        ChangeNotifierProvider<AuthViewModel>(create: (context) => AuthViewModel(
          Provider.of<Notifier>(context, listen: false)
        )),
        ChangeNotifierProvider<SettingsViewmodel>(create: (context) => SettingsViewmodel(
          Provider.of<Notifier>(context, listen: false)
        )),
        ChangeNotifierProvider(create: (_) => AllListsViewmodel()),
      ],
      child: MainApp(scaffoldMessengerKey: scaffoldMessengerKey))
    );
}

class MainApp extends StatelessWidget {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  const MainApp({super.key, required this.scaffoldMessengerKey});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      scaffoldMessengerKey: scaffoldMessengerKey,
      onGenerateRoute: Routes.generateRoute,
      builder: (context, child) {
        return SafeArea(
          child: child!,
        );
      },
      home: const SplashScreen(),
    );
  }
}
