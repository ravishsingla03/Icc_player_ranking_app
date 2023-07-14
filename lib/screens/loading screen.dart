import 'package:cricket_app/screens/stat.dart';
import 'package:cricket_app/screens/teamranking.dart';
import 'package:cricket_app/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:cricket_app/services/data.dart';
import 'package:cricket_app/services/data2.dart';
import 'package:cricket_app/screens/news.dart';

class loadingscreen extends StatefulWidget {
  loadingscreen({required this.bat, required this.odi});
  String bat;
  String odi;

  @override
  State<loadingscreen> createState() =>
      _loadingscreenState(bat: bat, odis: odi);
}

class _loadingscreenState extends State<loadingscreen> {
  _loadingscreenState({required this.bat, required this.odis});
  String bat;
  String odis;
  StatModel statModel = StatModel();

  void getinfo() async {
    var statdata = await statModel.getstat(bat, odis);
    Navigator.push(
      this.context,
      MaterialPageRoute(
          builder: (context) => odi(statsdata: statdata, odis: odis, bat: bat)),
    );
  }

  @override
  void initState() {
    getinfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}

class loadingNews extends StatefulWidget {
  const loadingNews({super.key});
  @override
  State<loadingNews> createState() => _loadingNewsState();
}

class _loadingNewsState extends State<loadingNews> {
  CricNews news = CricNews();
  void getinfo() async {
    var newsdata = await news.getnews();
    Navigator.push(
        this.context,
        MaterialPageRoute(
          builder: (context) => cricNews(newsdata: newsdata),
        ));
  }

  @override
  void initState() {
    getinfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}

class loadingTeamRank extends StatefulWidget {
  @override
  State<loadingTeamRank> createState() => _loadingTeamRankState();
}

class _loadingTeamRankState extends State<loadingTeamRank> {
  List teamdata = [0, 0, 0];
  teamsrank teamRank = teamsrank();
  void getinfo() async {
    for (int i = 0; i < 3; i++) {
      teamdata[i] = await teamRank.getdata(i);
      print(teamdata[i]);
    }
    Navigator.push(
        this.context,
        MaterialPageRoute(
          builder: (context) => teamsRank(teamdata: teamdata),
        ));
  }

  @override
  void initState() {
    getinfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
