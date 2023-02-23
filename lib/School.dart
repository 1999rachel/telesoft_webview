//
// import 'dart:async';
//
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
//
// class ConnectionCheckerDemo extends StatefulWidget {
//   const ConnectionCheckerDemo({Key? key}) : super(key: key);
//   @override
//   State<ConnectionCheckerDemo> createState() => _ConnectionCheckerDemoState();
// }
// class _ConnectionCheckerDemoState extends State<ConnectionCheckerDemo> {
//   final controller = WebViewController()
//   ..setJavaScriptMode(JavaScriptMode.unrestricted)
//   ..setBackgroundColor(const Color(0x00000000))
//   ..setNavigationDelegate(
//   NavigationDelegate(
//   onProgress: (int progress) {
//   // Update loading bar.
//   },
//   onPageStarted: (String url) {},
//   onPageFinished: (String url) {},
//   onWebResourceError: (WebResourceError error) {
//
//
//   },
//   onNavigationRequest: (NavigationRequest request) {
//   // if (request.url.startsWith('https://www.youtube.com/')) {
//   // return NavigationDecision.prevent;
//   // }
//   return NavigationDecision.navigate;
//   },
//   ),
//   )
//     ..loadRequest(Uri.parse('https://telesoft.co.tz'));
//   bool _isConnected = true;
//   StreamSubscription<ConnectivityResult>? _connectivitySubscription;
//
//   @override
//   void initState() {
//     super.initState();
//     _connectivitySubscription =
//         Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
//           setState(() {
//             _isConnected = (result != ConnectivityResult.none);
//           });
//         });
//   }
//
//   @override
//   void dispose() {
//     _connectivitySubscription?.cancel();
//     super.dispose();
//   }
//   // ..loadRequest(Uri.parse('https://telesoft.co.tz'));
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body:SafeArea(child: _isConnected
//           ? WebViewWidget(controller: controller)
//           : Center(
//         child: Text('No internet connection.'),
//       ),)
//     );
//   }
// }
//


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';


class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  bool loading = true;
  bool internetIsAvailable = false;

  @override
  void initState() {
    super.initState();
    checkConnection();
  }

  void checkConnection() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if(result == true) {
      setState(() {
        loading = false;
        internetIsAvailable = true;
      });
      controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://telesoft.co.tz'),
      );
    } else {
      setState(() {
        loading = false;
        internetIsAvailable = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
        !loading && internetIsAvailable ? WebViewWidget(
          controller: controller,
        ) : Container(
          child: !loading && !internetIsAvailable ? Container(
            child: Text('No internet Connection')
          ) : Container(
            child: Text('Loading')
          )
        ),
      ),
    );
  }
}