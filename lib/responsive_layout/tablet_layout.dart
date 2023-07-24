import 'package:flutter/material.dart';

import '../util/box.dart';
import '../util/tile.dart';
import 'const.dart';

class MyTabletLayout extends StatefulWidget {
  const MyTabletLayout({super.key});

  @override
  State<MyTabletLayout> createState() => _MyTabletLayoutState();
}

class _MyTabletLayoutState extends State<MyTabletLayout> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: myAppBar,
        backgroundColor: myBg,
        drawer: myDrawer,
        //  4 boxes on top
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                    itemCount: 4,
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), itemBuilder: (context, index){
                  return const MyBox();
                }),
              ),
            ),

            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index){
                      return const MyTile();
                    })
            )
          ],
        ),
      );
    }
  }

