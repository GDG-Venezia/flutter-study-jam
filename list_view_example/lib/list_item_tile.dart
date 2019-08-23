import 'package:flutter/material.dart';
import 'package:list_view_example/list_item.dart';

// The layout of the list's item
class ListItemTile extends StatefulWidget {
  final ListItem item;

  ListItemTile(this.item);

  @override
  _ListItemTileState createState() => _ListItemTileState();
}

class _ListItemTileState extends State<ListItemTile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        decoration: new BoxDecoration(
          color: Colors.grey.shade300.withOpacity(0.3),
          borderRadius: new BorderRadius.circular(5.0),
        ),
        child: Row(
          children: <Widget>[
            Icon(widget.item.icon),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(widget.item.title),
            ),
          ],
        ),
      ),
    );
  }
}
