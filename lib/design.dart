import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'views/widgets/listtile_people.dart';

class Design extends StatelessWidget {
  const Design({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: Icon(Icons.abc),
            actions: [
              Icon(Icons.search),
            ],
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: Text('Hector'),
            ),
          ),

          // SliverPersistentHeader(delegate: MyTitleAppBar()),
          // SliverToBoxAdapter(
          //   child: Container(
          //     margin: EdgeInsets.all(8),
          //     child: Column(
          //       children: [
          //         CupertinoSearchTextField(
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontWeight: FontWeight.w600,
          //             fontSize: 16,
          //           ),
          //         ),
          //         Divider(),
          //         ListTilePerson(),
          //         Divider(),
          //         ListTilePerson(),
          //         Divider(),
          //         ListTilePerson(),
          //         Divider(),
          //         ListTilePerson(),
          //         Divider(),
          //         ListTilePerson(),
          //         Divider(),
          //         ListTilePerson(),
          //         Divider(),
          //         ListTilePerson(),
          //         Divider(),
          //         ListTilePerson(),
          //         Divider(),
          //         ListTilePerson(),
          //         Divider(),
          //         ListTilePerson(),
          //         Divider(),
          //         ListTilePerson(),
          //         Divider(),
          //         ListTilePerson(),
          //         Divider(),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class MyTitleAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: Text('hola'),
    );
  }

  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
