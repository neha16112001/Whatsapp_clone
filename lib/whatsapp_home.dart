import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/call_screen.dart';
import 'package:flutter_whatsapp/pages/camera_screen.dart';
import 'package:flutter_whatsapp/pages/chat_screen.dart';
import 'package:flutter_whatsapp/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    tabController.addListener(() {
      if (tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WHATSAPP"),
        elevation: 0.7,
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(text: "CHATS"),
            Tab(
              text: "STATUS",
            ),
            Tab(text: "CALLS"),
          ],
        ),
        actions: const <Widget>[
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: const <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
              backgroundColor: Theme.of(context).accentColor,
              child: const Icon(
                Icons.message,
                color: Colors.white,
              ),
              onPressed: () => print("OPEN CHATS"),
            )
          : null,
    );
  }
}
