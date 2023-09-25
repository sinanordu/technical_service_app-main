import 'package:flutter/material.dart';
import 'package:technical_service_app/product/widgets/custom_text_field.dart';

class TabletCreateReportView extends StatelessWidget {
  const TabletCreateReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomTextField(hintText: 'Tespitler'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: 'Yapılan işlemler',
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }
}
