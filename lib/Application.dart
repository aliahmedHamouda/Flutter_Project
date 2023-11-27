import 'package:flutter/material.dart';
import "package:webview_flutter/webview_flutter.dart";

class Application extends StatefulWidget{
  State<StatefulWidget> createState(){
    return ApplicationState();
  }
}

class ApplicationState extends State<Application>{
      final controller = WebViewController()
   ..setJavaScriptMode(JavaScriptMode.unrestricted)
   ..loadRequest(Uri.parse("https://parisperfume.co"));
  @override
  Widget build(BuildContext context){
    return SafeArea(child: Scaffold(
      body:WebViewWidget(controller: controller),
    ),
    );
  }
}