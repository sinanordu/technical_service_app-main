import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:technical_service_app/product/features/auth/view/login_view_mobile.dart';
import 'package:technical_service_app/product/features/auth/view/login_view_tabletdesktop.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const MobileLoginView(),
      tablet: (context) => const TabletLoginView(),
    );
  }
}
