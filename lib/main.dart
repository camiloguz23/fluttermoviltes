import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final WebViewController _controller =
      WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..clearCache()
        ..loadRequest(
          Uri.parse('https://fimentes-web.vercel.app'),
          headers: {
            'Cache-Control': 'no-cache, no-store, must-revalidate',
            'Pragma': 'no-cache',
            'Expires': '0',
          },
        );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "page Test movil",
      home: Scaffold(
        body: SafeArea(child: WebViewWidget(controller: _controller)),
      ),
    );
  }
}
