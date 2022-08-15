import 'package:demo_tinder/screens/login.dart';
import 'package:demo_tinder/screens/tabPages/chat_tab.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/chats_provider.dart';


void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChatProvider>(
            create: (context) => ChatProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Chat_Tab(),
      ),
    );
  }
}
