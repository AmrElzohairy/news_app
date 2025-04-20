import 'package:flutter/material.dart';
import 'package:news_app/feature/home/presentation/ui/widgets/home_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [const SizedBox(height: 20), HomeHeader()]),
      ),
    );
  }
}
