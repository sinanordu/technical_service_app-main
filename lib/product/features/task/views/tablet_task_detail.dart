import 'package:flutter/material.dart';
import 'package:technical_service_app/core/extensions/context_extensions.dart';

class TabletTaskDetailView extends StatelessWidget {
  const TabletTaskDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, '/home');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          'GT054887',
          style: context.titleStyleMedium,
        ),
      ),
      body: _myTasksScreen(context),
      floatingActionButton: SizedBox(
        width: 90,
        height: 90,
        child: IconButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
              (states) => const Color(0xff4AC29A),
            ),
          ),
          iconSize: 42,
          onPressed: () {
            Navigator.pushNamed(context, '/createReport');
          },
          icon: const Icon(
            Icons.edit,
          ),
        ),
      ),
    );
  }

  Widget _myTasksScreen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 32, right: 32),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _statusInfoCard(context),
                _machineInfoCard(context),
                _customerInfoCard(context),
                _partsInfoCard(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _machineInfoCard(BuildContext context) {
    return SizedBox(
      height: 256,
      width: context.width,
      child: Card(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SUPER NOVA LINE 2136 - CNC FREZE MAKİNASI',
                      style: context.titleStyleLarge,
                    ),
                    Row(
                      children: [
                        Text(
                          'Garanti kapsamında',
                          style: context.titleStyleSmall,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SN: 15-1300-068\nUT: HDM00068',
                          style: context.titleStyleSmall.copyWith(fontSize: 22),
                        ),
                        Column(
                          children: [
                            const Icon(
                              Icons.history,
                              size: 40,
                            ),
                            Text(
                              'Servis Geçmişi',
                              style:
                                  context.bodyStyleLarge.copyWith(fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _statusInfoCard(BuildContext context) {
    return SizedBox(
      height: 148,
      width: context.width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Malzeme talep formu',
                          style: context.titleStyleSmall.copyWith(fontSize: 22),
                        ),
                        const SizedBox(
                          width: 32,
                        ),
                        const Column(
                          children: [
                            Icon(
                              Icons.task_alt,
                              size: 38,
                              color: Colors.green,
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Masraf talep formu',
                          style: context.titleStyleSmall.copyWith(fontSize: 22),
                        ),
                        const SizedBox(
                          width: 32,
                        ),
                        const Column(
                          children: [
                            Icon(
                              Icons.cancel_outlined,
                              size: 38,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 130,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Servis formu',
                          style: context.titleStyleSmall.copyWith(fontSize: 22),
                        ),
                        const SizedBox(
                          width: 32,
                        ),
                        const Column(
                          children: [
                            Icon(
                              Icons.cancel_outlined,
                              size: 38,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Satış faturası',
                          style: context.titleStyleSmall.copyWith(fontSize: 22),
                        ),
                        const SizedBox(
                          width: 32,
                        ),
                        const Column(
                          children: [
                            Icon(
                              Icons.cancel_outlined,
                              size: 38,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _customerInfoCard(BuildContext context) {
    return SizedBox(
      height: 300,
      width: context.width,
      child: Card(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SİMURG MODÜLER MOBİLYA SAN. ve TİC. A.Ş.',
                  style: context.titleStyleLarge,
                ),
                Text(
                  'AES0004711',
                  style: context.titleStyleSmall,
                ),
                Row(
                  children: [
                    Text(
                      'KERESTECİLER SİTESİ\n5.BLOK NO:14/16\nİstanbul/Başakşehir',
                      style: context.titleStyleSmall.copyWith(fontSize: 18),
                    ),
                    const SizedBox(
                      width: 82,
                    ),
                    Column(
                      children: [
                        Text(
                          'Ahmet SELİM\n+90 543 123 45 67\nahmet.selim@smurgmobilya.com',
                          style: context.titleStyleSmall.copyWith(fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  'Şikayet: Z ekseninde titreme var. Parçalar kusurlu çıkıyor.',
                  style: context.titleStyleSmall,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _partsInfoCard(BuildContext context) {
    return SizedBox(
      height: 130,
      width: context.width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '104133',
                    style: context.titleStyleSmall,
                  ),
                  Text('H018644', style: context.titleStyleSmall),
                  Text('Dişi döer dirsek 1/8-8',
                      style: context.titleStyleSmall),
                  Text('SANG-A', style: context.titleStyleSmall),
                  Text('4 Adet', style: context.titleStyleSmall),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'CDQ2A63TF-75DZ',
                    style: context.titleStyleSmall,
                  ),
                  Text('H013644', style: context.titleStyleSmall),
                  Text('KOMPAKT SİLİNDİR', style: context.titleStyleSmall),
                  Text('SMC', style: context.titleStyleSmall),
                  Text('2 Adet', style: context.titleStyleSmall),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
