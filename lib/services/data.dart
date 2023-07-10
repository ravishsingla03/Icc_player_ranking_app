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
        'x-rapidapi-key': '9c4037cdb4msh732f412a7d948a4p163356jsneb47f29d79c5'
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
//         'x-rapidapi-key': '9c4037cdb4msh732f412a7d948a4p163356jsneb47f29d79c5'
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
        'x-rapidapi-key': '761f66760amsh9929a36edf04652p1e805cjsn7a0f60ddf3f7'
      };
      var url =
          Uri.parse('https://cricbuzz-cricket.p.rapidapi.com/news/v1/index');
      var response = await http.get(url,headers: requestheader);
      return jsonDecode(response.body);
    } catch (e) {
      print(e);
    }
  }
}
