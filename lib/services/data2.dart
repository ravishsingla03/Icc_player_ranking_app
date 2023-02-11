import 'data.dart';

class StatModel {
  Future<dynamic> getstat(String bat, String odi) async {
    Networkhelper networkhelper = Networkhelper(
        "https://cricbuzz-cricket.p.rapidapi.com/stats/v1/rankings/$bat?formatType=$odi");
    var statdata = await networkhelper.getdata();
    return statdata;
  }
}
