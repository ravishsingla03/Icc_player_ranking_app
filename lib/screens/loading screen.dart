import 'package:cricket_app/screens/stat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:cricket_app/services/data2.dart';

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