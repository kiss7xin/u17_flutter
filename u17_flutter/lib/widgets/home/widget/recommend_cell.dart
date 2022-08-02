import 'package:flutter/material.dart';
import 'package:u17_flutter/models/boutique_list_entity.dart';

class RecommendCell extends StatelessWidget {

  final BoutiqueListComicLists? comicItem;

  // const RecommendCell({Key? key}) : super(key: key);

  RecommendCell({required this.comicItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {

      },
      child: Column(
        children: [
          header(),
          contents(),
        ],
      ),
    );
  }

  Widget header() {
    return Row(

    );
  }

  Widget contents() {
    return Container();
  }
}
