import 'package:flutter/material.dart';

class AcontePage extends StatelessWidget {
  const AcontePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acontes'),
      ),
      body: const Center(
        child: Text('Aconte Page'),
      ),
    );
  }
}
