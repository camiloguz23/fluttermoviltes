import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String initialUrl = 'https://linktest-alpha.vercel.app';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Page Test Móvil",
      home: Scaffold(
        body: SafeArea(
          child: InAppWebView(
            initialUrlRequest: URLRequest(
              url: WebUri(initialUrl),
            ),
            initialSettings: InAppWebViewSettings(
              javaScriptEnabled: true,
              cacheEnabled: false,
              useOnDownloadStart: true,
              mediaPlaybackRequiresUserGesture: false,
            ),
            onWebViewCreated: (controller) {
              print("🌍 WebView creada con URL: $initialUrl");
            },
            onDownloadStartRequest: (controller, url) async {
              print("📥 Descarga iniciada: $url");
            },
          ),
        ),
      ),
    );
  }
}
