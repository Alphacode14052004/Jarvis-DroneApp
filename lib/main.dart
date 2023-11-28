import 'package:flutter/material.dart';
import 'package:jarvisdrone/home.dart';
import 'package:jarvisdrone/videoplayerwidget.dart';
// import 'package:video_player/video_player.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Jarvis'),
            centerTitle: true,
            backgroundColor: Colors.orangeAccent,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: TabBarView(
                    children: [
                      Container(
                        color: Colors.white,
                        child: HomePage(key: key),
                        // ignore: prefer_const_constructors
                      ),
                      Container(
                        color: Colors.white,
                        child: VideoPlayerExample(),
                      ),
                      Container(
                        color: Colors.white,
                        child: const Icon(Icons.person),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.blueGrey,
                tabs: const [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
