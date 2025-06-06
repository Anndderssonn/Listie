import 'package:flutter/material.dart';
import 'package:listie/presentation/screens/screens.dart';

class HomeView extends StatelessWidget {
  static const name = 'home-view';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeScreen());
  }
}
