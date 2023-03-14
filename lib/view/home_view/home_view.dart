import 'package:flutter/material.dart';
import 'package:volant_task/view/home_detail_view/home_detail_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeDetailView(),
    );
  }
}
