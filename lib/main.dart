import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.grey,
            body: Column(
              children: [
                header(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Post(
                          name: 'Ruchir',
                          caption: 'Sunset Schemes Grey',
                          date: '12th August, 2032',
                          postImg: Image(
                              image: AssetImage("assets/images/pos.jfif")),
                          profImg: Image(
                              image: AssetImage("assets/images/profi.jfif")),
                        ),
                        Post(
                          name: 'Loren',
                          caption: 'Minetains',
                          date: '15th June, 2022',
                          postImg: Image(
                              image: AssetImage("assets/images/pos2.jfif")),
                          profImg: Image(
                              image: AssetImage("assets/images/prof2.jfif")),
                        ),
                        Post(
                          name: 'Mia',
                          caption: 'Morning view',
                          date: '34th March, 2002',
                          postImg: Image(
                              image: AssetImage("assets/images/pos3.jfif")),
                          profImg: Image(
                              image: AssetImage("assets/images/prof3.jfif")),
                        ),
                        Post(
                          name: 'Randall',
                          caption: "It's Autumn, don't fall",
                          date: '18th January, 1980',
                          postImg: Image(
                              image: AssetImage("assets/images/pos4.jfif")),
                          profImg: Image(
                              image: AssetImage("assets/images/prof4.jfif")),
                        ),
                      ],
                    ),
                  ),
                ),
                footer(),
              ],
            )));
  }
}

Widget header() {
  return Container(
    margin: EdgeInsets.only(
      top: 23,
    ),
    height: 70,
    width: double.infinity,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          blurRadius: 10.0,
          spreadRadius: 2.0,
        ),
      ],
      color: Color(0xffB0B0B0),
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)), // changes position of shadow
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 30,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.camera_alt_outlined,
          size: 25,
        ),
        Text(
          'Subtlegram',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 5.0,
                color: Colors.black45,
              ),
            ],
          ),
        ),
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/profi.jfif"),
          maxRadius: 18,
        ),
      ],
    ),
  );
}

class Post extends StatelessWidget {
  final String name;
  final String caption;
  final String date;
  final Image postImg;
  final Image profImg;
  const Post({
    this.name = 'default',
    this.caption = 'default',
    this.date = 'default',
    this.postImg = const Image(image: AssetImage("assets/images/pos.jfif")),
    this.profImg = const Image(image: AssetImage("assets/images/profi.jfif")),
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 15, top: 15),
        // color: Colors.amber,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  width: 8,
                ),
                CircleAvatar(
                  backgroundImage: profImg.image,
                  maxRadius: 18,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 20.0,
                  spreadRadius: 1.0,
                ),
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: postImg.image,
                  width: double.infinity,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.favorite_border_outlined),
                SizedBox(
                  width: 5,
                ),
                Text("12"),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.add_comment_outlined),
                SizedBox(
                  width: 5,
                ),
                Text("4")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  caption,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                date,
                style: TextStyle(fontSize: 12),
              )
            ])
          ],
        ));
  }
}

Widget footer() {
  return Container(
      margin: EdgeInsets.only(top: 20),
      height: 50,
      width: double.infinity,
      color: Color(0xffB0B0B0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.favorite_border_outlined),
          Icon(Icons.favorite_border_outlined),
          Icon(Icons.favorite_border_outlined),
          Icon(Icons.favorite_border_outlined),
        ],
      ));
}
