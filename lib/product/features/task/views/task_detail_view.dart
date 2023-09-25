import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:technical_service_app/product/features/task/views/mobile_task_detail.dart';
import 'package:technical_service_app/product/features/task/views/tablet_task_detail.dart';

class TaskDetailView extends StatelessWidget {
  const TaskDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => const MobileTaskDetailView(),
      tablet: (p0) => const TabletTaskDetailView(),
    );
  }
}
