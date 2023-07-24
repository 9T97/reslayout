import 'dart:js';

import 'package:flutter/material.dart';

var myAppBar = AppBar(
    backgroundColor: Colors.grey[900]
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        leading: const Icon(Icons.home),
        title: Text('H O M E'),
      ),
      ListTile(
        leading: const Icon(Icons.chat),
        title: Text('M E S S A G E'),
      ),
      ListTile(
        leading: const Icon(Icons.settings),
        title: Text('S E T T I N G S'),
      ),
      ListTile(
        leading: const Icon(Icons.logout),
        title: Text('L O G O U T'),
      )
    ],
  ),
);

var myBg = Colors.grey[300];
