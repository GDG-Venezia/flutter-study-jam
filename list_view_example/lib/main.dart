import 'package:flutter/material.dart';
import 'package:list_view_example/list_item.dart';
import 'package:list_view_example/list_item_tile.dart';

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
      home: MyHomePage(title: 'Flutter List View Demo'),
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
  var _items = <ListItem>[];
  bool _isLoading = true;

  void _updateList() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _items without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      _isLoading = false;
      _items = [
        ListItem("Title 1", Icons.print),
        ListItem("Title 2", Icons.gamepad),
        ListItem("Title 3", Icons.nature),
        ListItem("Title 4", Icons.near_me),
        ListItem("Title 5", Icons.radio),
        ListItem("Title 6", Icons.label),
        ListItem("Title 7", Icons.navigation),
        ListItem("Title 8", Icons.print),
        ListItem("Title 9", Icons.print),
        ListItem("Title 10", Icons.euro_symbol),
        ListItem("Title 11", Icons.backspace),
        ListItem("Title 12", Icons.ac_unit)
      ];
    });
  }

  @override
  void initState() {
    super.initState();
    // Simulate a network call to get the list of the data
    Future.delayed(const Duration(milliseconds: 2000), () {
      _updateList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _updateList method above.
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
      body: _isLoading ? _buildLoader() : _buildBody()
    );
  }

  Widget _buildBody() {
    return Container(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListItemTile(_items[index]);
        },
        itemCount: _items.length,
      ),
    );
  }

  Widget _buildLoader() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
