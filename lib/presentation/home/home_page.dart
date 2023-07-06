import 'package:flutter/material.dart';
import 'package:riddles/presentation/home/widgets/main_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MainCard(),
      ),
    );
  }
}
