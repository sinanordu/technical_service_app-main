import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technical_service_app/core/extensions/context_extensions.dart';

class TabletHomeView extends StatefulWidget {
  const TabletHomeView({super.key});

  @override
  State<TabletHomeView> createState() => _TabletHomeViewState();
}

class _TabletHomeViewState extends State<TabletHomeView> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabItems = [
      _myTasksScreen(context),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.yellow,
      )
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(82),
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/svg/izcilogo.svg',
                  width: 100,
                ),
                Text(
                  'TECH REPORT',
                  style: context.titleStyleSmall,
                )
              ],
            ),
          ),
          leadingWidth: 300,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Row(
                children: [
                  Image.asset(
                    'assets/png/aes_transparent_logo.png',
                    width: 256,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.info_outline,
                      size: 32,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: tabItems[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32,
        selectedFontSize: 24,
        unselectedFontSize: 20,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Görevlerim',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          )
        ],
        currentIndex: tabIndex,
        onTap: (index) {
          setState(() {
            tabIndex = index;
          });
        },
      ),
    );
  }

  Widget _myTasksScreen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 32, right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 5,
              itemBuilder: (context, index) => _taskItem(context),
            ),
          )
        ],
      ),
    );
  }

  Widget _taskItem(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 256,
        width: context.width * 0.8,
        child: Card(
          child: Row(
            children: [
              Container(
                width: 20,
                height: 256,
                color: Colors.red,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'SV05132 / ',
                            style: context.titleStyleLarge,
                          ),
                          Text(
                            'Mekanik Servis',
                            style: context.titleStyleLarge,
                          ),
                        ],
                      ),
                      Text(
                        'SUPER NOVA LINE 2136 - CNC FREZE MAKİNASI',
                        style: context.titleStyleSmall,
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
                        children: [
                          Text(
                            'KERESTECİLER SİTESİ 5.BLOK NO:14/16\nİstanbul/Başakşehir',
                            style:
                                context.titleStyleSmall.copyWith(fontSize: 18),
                          ),
                          const SizedBox(
                            width: 32,
                          ),
                          Column(
                            children: [
                              const Icon(
                                Icons.flight_takeoff,
                                size: 50,
                              ),
                              Text(
                                'UÇAK',
                                style: context.bodyStyleLarge
                                    .copyWith(fontSize: 18),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/taskDetail');
                },
                icon: const Icon(Icons.arrow_forward_ios, size: 64),
              )
            ],
          ),
        ),
      ),
    );
  }
}
