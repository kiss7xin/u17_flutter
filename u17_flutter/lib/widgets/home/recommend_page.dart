import 'package:flutter/material.dart';
import 'package:u17_flutter/components/empty_layout.dart';
import 'package:u17_flutter/components/refresh_layout.dart';
import 'package:u17_flutter/store/recommond_store.dart';
import 'package:u17_flutter/widgets/home/widget/recommend_cell.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({Key? key}) : super(key: key);

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> with AutomaticKeepAliveClientMixin {

  final Recommond recommendStore = Recommond();
  final int sexType = 0;
  @override
  void initState() {
    super.initState();

    recommendStore.load(sexType);
  }

  @override
  Widget build(BuildContext context) {
    var list = recommendStore.recommondList;
    if (list == null) {
      return Container();
    } else if (list.isEmpty) {
      return const EmptyLayout();
    }
    return RefreshLayout(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return RecommendCell(comicItem: list[index]);
          },
          itemCount: list.length,
        ),
        onRefreshCallback: () => recommendStore.load(sexType)
    );
  }

  @override
  bool get wantKeepAlive => true;
}
