import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35.0, bottom: 15.0),
      width: 340,
      child: TextField(
        decoration: InputDecoration(
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            hintText: 'Search here....',
            prefixIcon: Icon(
              Icons.search,
              size: 30,
              color: Colors.grey,
            )),
      ),
    );
  }
}