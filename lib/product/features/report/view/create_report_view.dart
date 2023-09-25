import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:technical_service_app/product/features/report/view/mobile_create_report_view.dart';
import 'package:technical_service_app/product/features/report/view/tablet_create_report_view.dart';

class CreateReportView extends StatelessWidget {
  const CreateReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const MobileCreateReportView(),
      tablet: (context) => const TabletCreateReportView(),
    
    );
  }
}
