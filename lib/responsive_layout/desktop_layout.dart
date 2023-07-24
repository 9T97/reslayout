import 'package:flutter/material.dart';

import '../util/box.dart';
import '../util/tile.dart';
import 'const.dart';

class MyDesktopLayout extends StatefulWidget {
  const MyDesktopLayout({super.key});

  @override
  State<MyDesktopLayout> createState() => _MyDesktopLayoutState();
}

class _MyDesktopLayoutState extends State<MyDesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: myBg,
        appBar: myAppBar,
      body: Row(
        children: [
          //sidebar
          myDrawer,
        //  rest of the body
          Expanded(
            flex: 2,
              child: Column(
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
                  itemCount: 6,
                  itemBuilder: (context, index){
                    return const MyTile();
                  })
          ),
        ],
      ),),
          
          Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                       ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index){
                         return const MyTile();
                        },

                      ),
                    ),
                  ),
                ],
              ),
          )


        ],
      ),


    );
  }
}
