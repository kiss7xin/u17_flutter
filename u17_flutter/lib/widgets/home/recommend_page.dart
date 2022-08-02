import 'package:flutter/material.dart';
import 'package:u17_flutter/components/empty_layout.dart';
import 'package:u17_flutter/components/refresh_layout.dart';
import 'package:u17_flutter/store/recommond_store.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({Key? key}) : super(key: key);

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {

  final Recommond recommend = Recommond();
  final int sexType = 0;
  @override
  void initState() {
    super.initState();

    recommend.load(sexType);
  }

  @override
  Widget build(BuildContext context) {
    var list = recommend.recommondList;
    if (list == null) {

    } else if (list.isEmpty) {
      return EmptyLayout();
    }
    return RefreshLayout(
        child: ListView.builder(
          itemBuilder: (context, index) => Text(list?[index]),
          itemCount: list?.length,
        ),
        onRefreshCallback: () => recommend.load(sexType)
    );
  }
}
