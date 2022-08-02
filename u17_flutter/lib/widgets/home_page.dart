import 'package:flutter/material.dart';
import 'home/subscribe_page.dart';
import 'home/vip_page.dart';
import 'home/rank_page.dart';
import 'home/recommend_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _tabValues = [
    '推荐',
    'VIP',
    '订阅',
    '排行'
  ];

  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _tabValues.length, vsync: ScrollableState());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            TabBar(
              tabs: _tabValues.map((e) {
                return Text(e);
              }).toList(),
              controller: _controller,
              indicatorColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: true,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 2.0,
              labelStyle: const TextStyle(height: 2, fontSize: 16),
            ),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: const [
                  RecommendPage(key: PageStorageKey("widget")),
                  VipPage(key: PageStorageKey("vip")),
                  SubscribePage(key: PageStorageKey("subscribe")),
                  RankPage(key: PageStorageKey("rank")),
                ],
              ),
            )

          ],
        )
    );
  }
}