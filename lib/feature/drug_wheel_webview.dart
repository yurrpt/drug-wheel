import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DrugWheelWebView extends StatefulWidget {
  const DrugWheelWebView({super.key});

  @override
  State<DrugWheelWebView> createState() => _DrugWheelWebViewState();
}

class _DrugWheelWebViewState extends State<DrugWheelWebView> {
  late WebViewController controller;

  @override
  void initState() {
    var uri = 'https://adf.org.au/drug-facts/#wheel';
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
        ),
      )
      ..loadRequest(Uri.parse(uri));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}
