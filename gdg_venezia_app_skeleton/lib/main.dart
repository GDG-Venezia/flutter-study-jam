import 'package:flutter/material.dart';
import 'package:gdg_venezia_app_skeleton/data/model/about_model.dart';
import 'package:gdg_venezia_app_skeleton/data/model/event_model.dart';
import 'package:gdg_venezia_app_skeleton/data/model/photo_model.dart';
import 'package:gdg_venezia_app_skeleton/data/model/social_model.dart';
import 'package:gdg_venezia_app_skeleton/ui/about_screen.dart';
import 'package:gdg_venezia_app_skeleton/ui/event_screen.dart';
import 'package:gdg_venezia_app_skeleton/ui/photo_screen.dart';
import 'package:gdg_venezia_app_skeleton/ui/social_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'GDG Venezia Showcase'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    EventScreen(),
    AboutScreen(),
    PhotoScreen(),
    SocialScreen()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(builder: (_) => EventModel()),
          ChangeNotifierProvider(builder: (_) => AboutModel()),
          ChangeNotifierProvider(builder: (_) => PhotoModel()),
          ChangeNotifierProvider(builder: (_) => SocialModel())
        ],
        child: _children[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        // When there are four or more items the shifting is active by default
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.event),
            title: new Text('Events'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.people),
            title: new Text('About'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            title: Text('Photo'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Contacts'),
          ),
        ],
      ),
    );
  }
}
