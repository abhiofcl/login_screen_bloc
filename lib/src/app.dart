import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'blocs/provider.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Log me in",
        home: SafeArea(
          child: Scaffold(
            body: LoginScreen(),
          ),
        ),
      ),
    );
  }
}
