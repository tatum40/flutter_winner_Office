import 'package:flutter/material.dart';

Widget test2() {
  return Container(
    child: Text('test 2'),
  );
}

Widget test3(index) {
  return CustomScrollView(
    slivers: <Widget>[
      SliverToBoxAdapter(
        child: Column(
          children: <Widget>[
            Container(
              height: 50.0,
              width: double.infinity,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
      SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              color: Colors.red,
            );
          },
          childCount: 10,
        ),
      ),
      SliverPadding(
        padding: const EdgeInsets.only(bottom: 80.0),
      )
    ],
  );
}
