import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {
  final Map _gifData;
  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(this._gifData["title"]),
          backgroundColor: Colors.black,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                Share.share(this._gifData["images"]["fixed_height"]["url"]);
              },
            )
          ],
        ),
        backgroundColor: Colors.black,
        body: Center(
            child:
                Image.network(this._gifData["images"]["fixed_height"]["url"])),
      ),
    );
  }
}
