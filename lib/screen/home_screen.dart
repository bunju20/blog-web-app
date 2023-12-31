import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://blog.codefactory.ai');

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  WebViewController controller = WebViewController()..loadRequest(homeUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icons.home)
        ],
        backgroundColor: Colors.orange,
        title: Text('code Factory'),
        centerTitle: true,
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
