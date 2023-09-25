import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technical_service_app/product/widgets/custom_text_field.dart';

class TabletLoginView extends StatelessWidget {
  const TabletLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 3,
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hesabınıza giriş yapın',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: SvgPicture.asset(
                'assets/svg/welcome.svg',
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 10,
              child: Column(
                children: [
                  const CustomTextField(
                    hintText: 'E-posta',
                    icon: Icon(Icons.email),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomTextField(
                    hintText: 'Şifre',
                    obsecureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    icon: Icon(Icons.password),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text('Beni hatırla')
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: const Text(
                        'Giriş yap',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 4,
            )
          ],
        ),
      ),
    );
  }
}
