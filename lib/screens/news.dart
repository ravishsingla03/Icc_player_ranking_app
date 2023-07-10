import 'package:flutter/material.dart';
import '../services/data.dart';

class cricNews extends StatefulWidget {
  var newsdata;
  cricNews({this.newsdata});

  @override
  State<cricNews> createState() => _cricNewsState(newsdata: newsdata);
}

class _cricNewsState extends State<cricNews> {
  var newsdata;
  _cricNewsState({this.newsdata});

  @override
  Widget build(BuildContext context) {
    newsdata['storyList'].removeWhere((element) => element['ad'] != null);

    return WillPopScope(
      onWillPop: () async {
        Navigator.pushNamed(context, '/');
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Cricket News')),
          automaticallyImplyLeading: false,
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[900],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              newsdata['storyList'][index]['story']['hline'],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              newsdata['storyList'][index]['story']['intro'],
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
