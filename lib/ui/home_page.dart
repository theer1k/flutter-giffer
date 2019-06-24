import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _search;
  int _offset = 25;

  Future<Map> _getGifs() async {
    http.Response response;

    if (_search == null) {
      response = await http.get(
          "https://api.giphy.com/v1/gifs/trending?api_key=WrUuXd58eRcHnCsfwxXM65dyP8llHOBe&limit=25&rating=G");
    } else {
      response = await http.get(
          "https://api.giphy.com/v1/gifs/search?api_key=WrUuXd58eRcHnCsfwxXM65dyP8llHOBe&q=$_search&limit=$_offset&offset=0&rating=G&lang=en");
    }

    return json.decode(response.body);
  }

  @override
  initState() {
    _getGifs().then((map) {
      print(map);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(),
    );
  }
}
