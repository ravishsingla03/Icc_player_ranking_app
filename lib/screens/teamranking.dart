import 'package:cricket_app/screens/loading%20screen.dart';
import 'package:cricket_app/widget.dart';
import 'package:flutter/material.dart';

class teamsRank extends StatefulWidget {
  List teamdata = [];
  teamsRank({required this.teamdata});
  int indexpage = 0;
  @override
  State<teamsRank> createState() => _teamsRankState();
}

class _teamsRankState extends State<teamsRank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        currentIndex: widget.indexpage,
        onTap: (index) {
          setState(() {
            widget.indexpage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_cricket),
            label: 'Test',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_cricket),
            label: 'ODI',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_cricket_sharp),
            label: 'T20',
          ),
        ],
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Teams Ranking'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Headings2(),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Teamdatabox(
                      teamdata: widget.teamdata[widget.indexpage]['rank']
                          [index]),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
