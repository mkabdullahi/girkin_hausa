import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter/services.dart';

import 'components/components.dart';


void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyAbinci());
  FlutterNativeSplash.remove();
}

class MyAbinci extends StatelessWidget {
  const MyAbinci({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = CustomTheme.darkTheme();
    return MaterialApp(
      title: 'Abincin Hausa',
      theme: theme,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}