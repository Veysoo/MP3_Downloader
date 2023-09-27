import 'package:flutter/material.dart';
import 'package:mp3_downloader/download_page.dart';
import 'package:mp3_downloader/music_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: mainPage(),
    );
  }
}

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            shadowColor: Colors.amber,
            title: Text(
              "MP3 MP4 Downloader",
              style: TextStyle(
                  fontSize: 21,
                  color: Colors.amber[900],
                  fontStyle: FontStyle.italic),
            ),
            backgroundColor: Colors.white,
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.download,
                  color: Colors.amber,
                )),
                Tab(
                    icon: Icon(
                  Icons.music_note,
                  color: Colors.amber,
                ))
              ],
              indicatorColor: Colors.pinkAccent[100],
              indicatorWeight: 1,
            ),
          ),
          body: TabBarView(
            children: [DownloadPage(), MusicListPage()],
          ),
        ));
  }
}
