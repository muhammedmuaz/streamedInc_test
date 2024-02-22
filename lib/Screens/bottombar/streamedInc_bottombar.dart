import 'package:flutter/material.dart';
import '../home/home_page.dart';
import 'widgets/streamedInc_bottom_nav.dart';

class RepherredBottomNavigation extends StatelessWidget {
  const RepherredBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: StreamDincHomePage(),
      bottomNavigationBar: SafeArea(child: StreamedIncBusinessBottomNavBar()),
    );
  }
}
