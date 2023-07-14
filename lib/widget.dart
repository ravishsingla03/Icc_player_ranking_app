import 'package:cricket_app/main.dart';
import 'package:flutter/material.dart';

class info extends StatefulWidget {
  info(
      {required this.name,
      required this.point,
      required this.rank,
      required this.country});
  String name = '';
  var point;
  var rank;
  String country = '';

  @override
  State<info> createState() =>
      _infoState(name: name, point: point, rank: rank, country: country);
}

class _infoState extends State<info> {
  _infoState(
      {required this.name,
      required this.point,
      required this.rank,
      required this.country});
  String name = '';
  var point;
  var rank;
  String country = '';
  String countr() {
    if (country.contains(' ')) {
      var lis = country.split(' ');
      return lis[0][0] + lis[1][0];
    } else {
      return country.substring(0, 3);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      // ignore: sort_child_properties_last
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                rank.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 9,
          ),
          Expanded(
            flex: 3,
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                countr(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
              point.toString(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      height: 100,
      width: 100,
    );
  }
}

class headings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            width: 10,
          ),
          Text(
            'Rank',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'Name',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            width: 40,
          ),
          Text(
            'Country',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            width: 40,
          ),
          Text(
            'Points',
            textAlign: TextAlign.right,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class Headings2 extends StatelessWidget {
  const Headings2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Rank",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text("Country",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text("Points",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text("Matches",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

class Teamdatabox extends StatefulWidget {
  var teamdata;
  Teamdatabox({required this.teamdata});

  @override
  State<Teamdatabox> createState() => _TeamdataboxState();
}

class _TeamdataboxState extends State<Teamdatabox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.teamdata['rank'].toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(widget.teamdata['name'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(widget.teamdata['points'].toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(widget.teamdata['matches'].toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
