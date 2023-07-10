import 'package:cricket_app/screens/loading%20screen.dart';
import 'package:flutter/material.dart';
import 'package:cricket_app/screens/chatscreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String type = 'odi';
  String tyep1 = 'batsmen';
  Color cl1 = Colors.white;
  Color cl2 = Colors.white;
  Color cl3 = Colors.white;
  Color cl5 = Colors.white;
  Color cl4 = Colors.white;
  Color cl6 = Colors.white;
  Color cl7 = Colors.white;
  // Imagehelper imagehelper = Imagehelper();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    this.context,
                    MaterialPageRoute(
                      builder: (context) => loadingNews(),
                    ),
                  );
                },
                icon: Icon(Icons.article_outlined))
          ],
          title: Text('ICC Ranking'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      type = 'odi';
                      setState(() {
                        cl1 = Colors.greenAccent;
                        cl2 = Colors.white;
                        cl3 = Colors.white;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Text('ODI',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.0,
                                color: cl1,
                                fontFamily: 'Raleway')),
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      type = 'test';
                      setState(() {
                        cl2 = Colors.greenAccent;
                        cl1 = Colors.white;
                        cl3 = Colors.white;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Text('Test',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.0,
                                color: cl2,
                                fontFamily: 'Raleway')),
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      type = 't20';
                      setState(() {
                        cl3 = Colors.greenAccent;
                        cl1 = Colors.white;
                        cl2 = Colors.white;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Text('T20',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.0,
                                color: cl3,
                                fontFamily: 'Raleway')),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      tyep1 = 'batsmen';
                      setState(() {
                        cl4 = Colors.greenAccent;
                        cl5 = Colors.white;
                        cl6 = Colors.white;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Text('Batting',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.0,
                                color: cl4,
                                fontFamily: 'Raleway')),
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      tyep1 = 'bowlers';
                      setState(() {
                        cl5 = Colors.greenAccent;
                        cl4 = Colors.white;
                        cl6 = Colors.white;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Text('Bowling',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.0,
                                color: cl5,
                                fontFamily: 'Raleway')),
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      tyep1 = 'allrounders';
                      setState(() {
                        cl6 = Colors.greenAccent;
                        cl4 = Colors.white;
                        cl5 = Colors.white;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Text('All Rounders',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.0,
                                color: cl6,
                                fontFamily: 'Raleway')),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  this.context,
                  MaterialPageRoute(
                    builder: (context) => loadingscreen(bat: tyep1, odi: type),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: Text('Get Ranking',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, color: cl7, fontFamily: 'Raleway')),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        MaterialPageRoute(
                          builder: (context) => chat(),
                        ),
                      );
                    },
                    icon: Icon(Icons.question_answer, color: Colors.white),
                    label: Text(
                      'Ask',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontFamily: 'Raleway'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
