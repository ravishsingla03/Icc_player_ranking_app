import 'package:flutter/material.dart';
import '../widget.dart';
import '../main.dart';

class odi extends StatefulWidget {
  var statsdata;
  String odis;
  String bat;
  odi({required this.statsdata, required this.odis, required this.bat});
  @override
  State<odi> createState() => _odiState(
      statsdata: statsdata,
      odis: odis.toUpperCase(),
      bat: bat[0].toUpperCase() + bat.substring(1));
}

class _odiState extends State<odi> {
  var statsdata;
  String odis;
  String bat;
  _odiState({required this.statsdata, required this.odis, required this.bat});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ICC $odis $bat Ranking')),
      ),
      body: Column(children: [
        headings(),
        SizedBox(
          height: 613,
          child: ListView.builder(
              itemCount: 9,
              itemBuilder: (content, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    info(
                        name: statsdata['rank'][index]['name'],
                        point: statsdata['rank'][index]['points'],
                        rank: statsdata['rank'][index]['rank'],
                        country: statsdata['rank'][index]['country']),
                  ],
                );
              }),
        ),
      ]),
    );
  }
}
