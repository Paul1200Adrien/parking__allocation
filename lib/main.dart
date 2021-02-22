import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: parking(),
    );
  }
}

class parking extends StatefulWidget {
  @override
  _parkingState createState() => _parkingState();
}

class _parkingState extends State<parking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView example'),
      ),
//      body: const WebView(
//        initialUrl: 'http://192.168.10.112:8080/parking/index.html',
//        //javascriptMode: JavascriptMode.unrestricted,
//      ),
      body: WebviewScaffold(
        hidden :true,
        withZoom : true,
        url: 'http://192.168.10.78:80/parking/index.html',
        //javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

