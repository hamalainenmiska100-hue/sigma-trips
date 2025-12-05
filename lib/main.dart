import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const SigmaTripsApp());
}

class SigmaTripsApp extends StatelessWidget {
  const SigmaTripsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sigma Trips',
      home: SigmaTripsPage(),
    );
  }
}

class SigmaTripsPage extends StatefulWidget {
  const SigmaTripsPage({super.key});

  @override
  State<SigmaTripsPage> createState() => _SigmaTripsPageState();
}

class _SigmaTripsPageState extends State<SigmaTripsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://sigmapallukka.xyz',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
