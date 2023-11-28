import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.topRight,
          child: CircularPercentIndicator(
            radius: 40,
            lineWidth: 20,
            percent: 0.4,
            progressColor: Colors.orange,
            backgroundColor: Colors.deepOrange,
            circularStrokeCap: CircularStrokeCap.round,
            center: const Text(
              '40%',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
