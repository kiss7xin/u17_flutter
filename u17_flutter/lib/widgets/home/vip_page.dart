import 'package:flutter/material.dart';
import 'package:u17_flutter/components/empty_layout.dart';
import 'package:u17_flutter/components/refresh_layout.dart';
import 'package:u17_flutter/store/home_vip_store.dart';
import 'package:u17_flutter/widgets/home/widget/recommend_cell.dart';

class VipPage extends StatefulWidget {
  const VipPage({Key? key}) : super(key: key);

  @override
  State<VipPage> createState() => _VipPageState();
}

class _VipPageState extends State<VipPage> with AutomaticKeepAliveClientMixin {

  final HomeVip vipStore = HomeVip();

  @override
  void initState() {
    super.initState();
    vipStore.refresh();
  }

  @override
  Widget build(BuildContext context) {
    var list = vipStore.vipList;
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
        onRefreshCallback: () => vipStore.refresh()
    );
  }

  @override
  bool get wantKeepAlive => true;
}
