import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomeScreen());
  }
}

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Chats',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 22)),
          leading: Container(
            padding: EdgeInsets.only(left: 16, top: 3, bottom: 3),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://d1aettbyeyfilo.cloudfront.net/dataskills/unsplash_1602675288.jpg'),
            ),
          ),
          actions: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: IconButton(
                icon: Icon(
                  Icons.photo_camera,
                  size: 22,
                  color: Colors.white,
                  //Colors.transparent
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: IconButton(
                icon: Icon(
                  Icons.edit,
                  size: 22,
                  color: Colors.white,
                  //Colors.transparent
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ]),
      body: Column(children: <Widget>[
        Padding(
            padding: EdgeInsets.only(left: 12),
            child: Container(
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.grey,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.search, color: Colors.white),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white)),
                ))),
        Container(
            height: 80,
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 16),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                      width: 80,
                      margin: EdgeInsets.only(left: 14),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                                height: 65,
                                width: 65,
                                padding:
                                    EdgeInsets.all((index % 2 == 1) ? 2 : 0),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    color: Colors.transparent,
                                    border: Border.all(
                                        color: Colors.blue, width: 3)),
                                child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 50,
                                    child: ClipOval(
                                        child: (index == 0)
                                            ? IconButton(
                                                icon: Icon(
                                                  Icons.add,
                                                  size: 22,
                                                  color: Colors.white,
                                                ),
                                                onPressed: () {},
                                              )
                                            : Image.network(
                                                'https://cdn3.iconfinder.com/data/icons/basic-ui-elementssky-blue/177/person-512.png')))),
                            Text("Your Story",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: (index % 2 == 1)
                                        ? Colors.white
                                        : Colors.white))
                          ]));
                })),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 10),
          height: 600,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: EdgeInsets.only(bottom: 10, right: 8),
                leading: Stack(
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.transparent,
                      ),
                      child: ClipOval(
                          child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 30,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://cdn3.iconfinder.com/data/icons/basic-ui-elementssky-blue/177/person-512.png'),
                        ),
                      )),
                    ),
                  ],
                ),
                title: Padding(
                  padding: EdgeInsets.only(bottom: 6),
                  child: Text(
                    "Abdullah Saqer",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
                subtitle: Text(
                  "This is message from Abdullah Saqer",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.grey),
                ),
                trailing: Icon(
                  Icons.check_circle,
                  size: 20,
                  color: Colors.grey,
                ),
              );
            },
            itemCount: 15,
          ),
        ),
      ]),
    );
  }
}
