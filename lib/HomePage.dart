import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class 4&5 Assignment-App Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          //padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Subtext',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTileWidget(
              icon: Icons.mail,
              title: 'Inbox',
              onTap: () {
                // Add navigation logic here
              },
            ),
            ListTileWidget(
              icon: Icons.play_arrow,
              title: 'Outbox',
              onTap: () {
                // Add navigation logic here
              },
            ),
            ListTileWidget(
              icon: Icons.favorite,
              title: 'Favourites',
              onTap: () {
                // Add navigation logic here
              },
            ),
            ListTileWidget(
              icon: Icons.archive,
              title: 'Archieve',
              onTap: () {
                // Add navigation logic here
              },
            ),
            ListTileWidget(
              icon: Icons.delete,
              title: 'Trash',
              onTap: () {
                // Add navigation logic here
              },
            ),
            ListTileWidget(
              icon: Icons.report,
              title: 'Spam',
              onTap: () {
                // Add navigation logic here
              },
            ),
            Divider(),
            ListTile(
              title: Text('Labels'), // Text after Divider()
              onTap: () {
                // Add navigation logic here
              },
            ),
            ListTileWidget(
              icon: Icons.bookmark,
              title: 'Family',
              onTap: () {
                // Add navigation logic here
              },
            ),
            ListTileWidget(
              icon: Icons.bookmark,
              title: 'Friends',
              onTap: () {
                // Add navigation logic here
              },
            ),
            ListTileWidget(
              icon: Icons.bookmark,
              title: 'Work',
              onTap: () {
                // Add navigation logic here
              },
            ),
            Divider(),
            ListTileWidget(
              icon: Icons.settings,
              title: 'Settings & account',
              onTap: () {
                // Add navigation logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListTileWidget extends StatefulWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const ListTileWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  Color hoverColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          hoverColor = Colors.blue
              .withOpacity(0.1); // Change to your desired hover color
        });
      },
      onExit: (event) {
        setState(() {
          hoverColor = Colors.transparent;
        });
      },
      child: Container(
        color: hoverColor,
        child: ListTile(
          contentPadding:
              EdgeInsets.only(left: 16, right: 16), // Adjust padding as needed
          leading: Container(
            padding: EdgeInsets.all(8), // Adjust padding as needed
            child: Icon(
              widget.icon,
              color: hoverColor == Colors.transparent
                  ? null
                  : Colors.blue, // Change color when hovered
            ),
          ),
          title: Container(
            padding: EdgeInsets.only(left: 16), // Adjust padding as needed
            child: Text(
              widget.title,
              style: TextStyle(
                color: hoverColor == Colors.transparent
                    ? null
                    : Colors.blue, // Change color when hovered
              ),
            ),
          ),
          //onTap: widget.onTap,
        ),
      ),
    );
  }
}
