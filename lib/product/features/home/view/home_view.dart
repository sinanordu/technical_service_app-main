import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:technical_service_app/product/features/home/view/mobile_home_view.dart';
import 'package:technical_service_app/product/features/home/view/tablet_home_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const MobileHomeView(),
      tablet: (context) => const TabletHomeView(),
    );
  }
}
