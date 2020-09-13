import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;
  List quotes = [
    "Life isn't about getting and having, it's about giving and being.",
    "Whatever the mind of man can conceive and believe, it can achieve.",
    "Strive not to be a success, but rather to be of value.",
    "You miss 100% of the shots you don't take.",
    "I've missed more than 9000 shots in my career. I've lost almost 300 games",
    "Definiteness of purpose is the starting point of all achievement.",
    "We become whta we think about.",
    "Life is 10% what happens to me and 90% of how I react to it.",
    "Your time is limited, so don't waste it living someone else's life.",
    "Your time is limited so don't waste it living someone else's life"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: Text('Quotes App Demo'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(14.5)),
                    child: Center(
                        child: Text(
                      quotes[_index % quotes.length],
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontStyle: FontStyle.italic,
                          fontSize: 16.5),
                    ))),
              ),
            ),
            Divider(
              thickness: 2.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  color: Colors.greenAccent.shade700,
                  icon: Icon(Icons.wb_sunny, color: Colors.white),
                  label: Text(
                    "Inspire me!",
                    style: TextStyle(color: Colors.white, fontSize: 18.8),
                  )),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    //increment our index/counter by 1.
    setState(() {
      _index += 1;
    });
  }
}
