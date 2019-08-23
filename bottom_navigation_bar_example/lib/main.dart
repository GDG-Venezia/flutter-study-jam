import 'package:bottom_navigation_bar_example/placeholder_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Bottom Navigation Bar Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  // The list of pages accessible from the navigation bar
  // Replace the placeholder with your custom implementation
  final List<Widget> _children = [
    PlaceholderWidget("Events"),
    PlaceholderWidget("About"),
    PlaceholderWidget("Photo"),
    PlaceholderWidget("Contacts")
  ];

  void _onTabTapped(int index) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _currentIndex without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _onTabTapped method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: _children[_currentIndex],
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
