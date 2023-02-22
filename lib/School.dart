
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class ConnectionCheckerDemo extends StatefulWidget {
  const ConnectionCheckerDemo({Key? key}) : super(key: key);
  @override
  State<ConnectionCheckerDemo> createState() => _ConnectionCheckerDemoState();
}
class _ConnectionCheckerDemoState extends State<ConnectionCheckerDemo> {
  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
  NavigationDelegate(
  onProgress: (int progress) {
  // Update loading bar.
  },
  onPageStarted: (String url) {},
  onPageFinished: (String url) {},
  onWebResourceError: (WebResourceError error) {

  },
  onNavigationRequest: (NavigationRequest request) {
  // if (request.url.startsWith('https://www.youtube.com/')) {
  // return NavigationDecision.prevent;
  // }
  return NavigationDecision.navigate;
  },
  ),
  )
  ..loadRequest(Uri.parse('https://telesoft.co.tz'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SafeArea(child: WebViewWidget(controller: controller))
    );
  }
}

