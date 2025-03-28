import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String initialUrl = 'https://fimentes-web.vercel.app';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Page Test Móvil",
      home: Scaffold(
        body: SafeArea(
          child: InAppWebView(
            initialUrlRequest: URLRequest(
              url: WebUri.uri(Uri.parse(initialUrl)),
            ),
            initialSettings: InAppWebViewSettings(
              javaScriptEnabled: true,
              cacheEnabled: false,
              useOnDownloadStart: true,
              mediaPlaybackRequiresUserGesture: false,
            ),
            onWebViewCreated: (controller) {
              // Puedes almacenar el controlador si necesitas interactuar con el WebView más adelante
            },
            onDownloadStartRequest: (controller, url) async {
              // Maneja la descarga de archivos aquí
            },
          ),
        ),
      ),
    );
  }
}
