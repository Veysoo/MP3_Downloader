import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  String Link = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment(0.8, 1),
        colors: <Color>[
          Color(0xff1f005c),
          Color(0xff5b0060),
          Color(0xff870160),
          Color(0xffac255e),
          Color(0xffca485c),
          Color(0xffe16b5c),
          Color(0xfff39060),
          Color(0xffffb56b),
        ],
        tileMode: TileMode.mirror,
      )),
      child: ListView(children: [
        SizedBox(
          height: 200,
        ),
        Center(
          child: Text(
            "Youtube Video Link",
            style: TextStyle(
              color: Colors.black,
              fontSize: 23,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
          child: SizedBox(
            width: 250,
            child: TextField(
              onChanged: (Text) {
                setState(() {
                  Link = Text;
                });
              },
              decoration: InputDecoration(
                labelText: "Enter the link",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: Text("Accept"),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 182, 55, 108),
            ),
          ),
        ),
      ]),
    ));
  }
}
