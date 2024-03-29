import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

String type = 'odi';
String type1 = 'batsmen';

class Networkhelper {
  Networkhelper(this.url);
  final String url;
  Future getdata() async {
    try {
      Map<String, String> requestheader = {
        'x-rapidapi-host': 'cricbuzz-cricket.p.rapidapi.com',
        'x-rapidapi-key': 'put your key here'
      };
      var ur = Uri.parse(url);
      var response = await http.get(ur, headers: requestheader);
      return jsonDecode(response.body);
    } catch (e) {
      print(e);
    }
  }
}

// class Imagehelper {
//   Future getimage() async {
//     try {
//       Map<String, String> requestheader = {
//         'x-rapidapi-host': 'cricbuzz-cricket.p.rapidapi.com',
//         'x-rapidapi-key': 'put your key here'
//       };
//       var ur = Uri.parse(
//           "https://cricbuzz-cricket.p.rapidapi.com/img/v1/i1/c244980/i.jpg");
//       var response = await http.get(ur, headers: requestheader);
//       return jsonDecode(response.body);
//     } catch (e) {
//       print(e);
//     }
//   }
// }

class CricNews {
  Future getnews() async {
    try {
      Map<String, String> requestheader = {
        'x-rapidapi-host': 'cricbuzz-cricket.p.rapidapi.com',
        'x-rapidapi-key': 'put your key here'
      };
      var url =
          Uri.parse('https://cricbuzz-cricket.p.rapidapi.com/news/v1/index');
      var response = await http.get(url, headers: requestheader);
      return jsonDecode(response.body);
    } catch (e) {
      print(e);
    }
  }
}

class teamsrank {
  Future getdata(int index) async {
    String r = "test";
    if (index == 0) {
      r = 'test';
    } else if (index == 1) {
      r = 'odi';
    } else{
      r = 't20';
    }
    try {
      Map<String, String> requestheader = {
        'x-rapidapi-host': 'cricbuzz-cricket.p.rapidapi.com',
        'x-rapidapi-key': 'put your key here'
      };
      var ur = Uri.parse(
          'https://cricbuzz-cricket.p.rapidapi.com/stats/v1/rankings/teams?formatType=${r}');
      var response = await http.get(ur, headers: requestheader);
      return jsonDecode(response.body);
    } catch (e) {
      print(e);
    }
  }
}
