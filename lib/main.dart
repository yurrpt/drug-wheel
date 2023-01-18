import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'feature/drug_wheel_webview.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: [
      SystemUiOverlay.top,
      SystemUiOverlay.bottom,
    ]);

    return const MaterialApp(
      title: 'Drug Wheel',
      home: DrugWheelWebView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
