import 'package:flutter/material.dart';

class mapview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Live View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Map of drone'),
      ),
    );
  }
}
