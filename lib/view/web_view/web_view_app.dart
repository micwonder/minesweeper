import 'package:flutter/material.dart';
// import 'package:minesweeper/view/web_view/navigation_controlls.dart';
import 'web_view_stack.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:convert';

Map<String, dynamic> eventStatus = {
  'login': false,
  'logout': false,
  'registerClick': false,
  'registration': false,
  'rechargeClick': false,
  'firstrecharge': false,
  'recharge': false,
  'withdrawClick': false,
  'withdrawOrderSuccess': false,
  'enterGame': false,
  'vipReward': false,
  'dailyReward': false,
  'enterEventCenter': false,
  'enterTask': false,
  'enterCashback': false,
  'enterPromote': false,
  'bannerClick': false,
  // Add other events as needed
};

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..enableZoom(false)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..addJavaScriptChannel('login', onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('logout', onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('registerClick',
          onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('register', onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('rechargeClick',
          onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('firstrecharge',
          onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('recharge', onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('withdrawClick',
          onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('withdrawOrderSuccess',
          onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('enterGame', onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('vipReward', onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('dailyReward', onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('enterEventCenter',
          onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('enterTask', onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('enterCashback',
          onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('enterPromote',
          onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..addJavaScriptChannel('bannerClick', onMessageReceived: (message) async {
        print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${message.message}");
        // handlePostMessage(message.name, message.message);
      })
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            print("DDDDDDDDDDDDDDDDDDDDDDDDDD: ${request.url}");
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            } else if (request.url.endsWith('page5')) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/landingpage', (Route<dynamic> route) => false);
            } else if (request.url.startsWith('https://www.facebook.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(
        Uri.parse(
            'https://www.eeeleao.com/home/game?id=47789294&gameCategoryId=0'),
      );
  }

  void handlePostMessage(String name, String data) {
    // Parse the JSON data string into a Map
    Map<String, dynamic> params = jsonDecode(data);

    // Handle the different event names
    switch (name) {
      case 'login':
        // Handle login event

        // Set the event status to true
        setState(
          () => eventStatus['login'] = true,
        );
        break;
      case 'logout':
        // Handle logout event

        // Set the event status to true
        break;
      case 'registerClick':
        // Handle registerClick event

        // Set the event status to true
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('leao.bet'),
      //   actions: [
      //     NavigationControls(controller: controller),
      //   ],
      // ),
      body: WebViewStack(controller: controller),
    );
  }
}
