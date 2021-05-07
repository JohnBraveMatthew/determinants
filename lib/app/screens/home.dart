import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculate Determinant"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Put an image here"),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.lightBlue, Colors.blue[800]])),
            ),
            ListTile(
              title: Text("Two by Two (2X2"),
            ),
            ListTile(
                title: Text("Three by Three (3X3)"),
                tileColor: Colors.white12,
                selectedTileColor: Colors.blue[900],
                onTap: () {}),
            Divider(
              height: 0,
            ),
            ListTile(
              title: Text("Four by Three (4X4)"),
            ),
            Divider(
              height: 20,
            ),
            ListTile(
              title: Text("Share"),
              leading: Icon(Icons.share),
            ),
          ],
        ),
      ),
    );
  }
}
