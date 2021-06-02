import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBE),
      appBar: AppBar(
        title: Text("About Dictionary", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF21BFBE),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            child: Center(
              child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width - 100,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Learning Flutter",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text("You can find your way to code on",
                            style: TextStyle(
                                fontSize: 12, fontStyle: FontStyle.normal)),
                        Text("github.com/Harshita248",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 50,
                        ),
                        Text("Made with ❤",
                            style: TextStyle(
                                fontSize: 12, fontStyle: FontStyle.normal)),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 8.0),
                          child: Text(
                            "Impossible is a word only to be found in the dictionary of fools!",
                            style: TextStyle(),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
              child: Container(
                height: 200,
                width: 200,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/b/ba/Wiktionary_Dynamic_Dictionary_Logo_2.svg",
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
