import 'package:flutter/material.dart';
import 'categVocab.dart';

List categoryDataBtn = [
  {"message": "คำศัพท์", "url": "assets/images/vocab.png"},
  {"message": "สำนวน", "url": "assets/images/grammar.png"},
  {"message": "การออกเสียง", "url": "assets/images/phonics.png"},
  {"message": "เกม", "url": "assets/images/game.png"},
];

class CategoryMenu extends StatelessWidget {
  const CategoryMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Container(
        margin: EdgeInsets.only(top: 20.0),
        child: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
          children: <Widget>[
            for (var i = 0; i < categoryDataBtn.length; i++)
              MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                onPressed: () => {
                  if (i == 0)
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryVocab())),
                    }
                },
                child: Container(
                  width: 158,
                  height: 158,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(categoryDataBtn[i]['url']),
                      Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: Text(categoryDataBtn[i]['message']))
                    ],
                  ),
                ),
              ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: () {},
              child: Container(
                width: 158,
                height: 158,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffc4c4c4)),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text('หัวข้อ'))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
