import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:u17_flutter/common/ImageConfig.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:u17_flutter/models/boutique_entity.dart';

class RecommendCell extends StatelessWidget {

  final ComicLists? comicItem;

  // const RecommendCell({Key? key,required this.comicItem}) : super(key: key);

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

  /// 头部视图
  Widget header() {
    return Padding(
      padding: EdgeInsets.only(top: 8.r,bottom: 8.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              headerIcon(),
              headerTitle(),
            ],
          ),
          moreButton(),
        ],
      ),
    );
  }

  /// 图标
  Widget headerIcon() {
    return Padding(
      padding: EdgeInsets.only(left: 8.r,),
      child: CachedNetworkImage(
          imageUrl: comicItem?.titleIconUrl ?? '',
          width: 20.r,
          height: 20.r,
          placeholder: (context, url) {
            return Container(
              child: Image.asset(ImageConfig.DefaultIcon,fit: BoxFit.cover,),
            );
          }
      ),
    );
  }

  /// 标题
  Widget headerTitle() {
    return Container(
      padding: EdgeInsets.only(left: 5.r),
      width: 200,
      child: Text(
        comicItem?.itemTitle ?? '',
        style: const TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.normal),
        maxLines: 1,
      ),
    );
  }

  /// 更多
  Widget moreButton() {
    return Container(
      width: 50,
      padding: EdgeInsets.only(right: 8.r),
      child: TextButton(
        onPressed: () => {

        },
        child: const Text("•••", style: TextStyle(color: Colors.grey, fontSize: 12)),
      ),
    );
  }

  /// 内容
  Widget contents() {
    final comics = comicItem?.comics ?? [];
    if (comics.isEmpty) {
      return Container();
    }
    return Container(
      alignment: Alignment.centerLeft,
      child: Wrap(
        spacing: 10,
        runSpacing: 20,
        alignment: WrapAlignment.spaceBetween,
        children: comics.map((e) {
          return comicCCell(e);
        }).toList(),
      ),
    );
  }

  /// cell
  Widget comicCCell(Comics item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        cellImage(item.cover),
        Padding(
          padding: EdgeInsets.only(top: 8.r,left: 8.r),
          child: Text(item.name ?? '', style: TextStyle(fontSize: 14.sp, color: Colors.black),),
        ),
        Padding(
          padding: EdgeInsets.only(top: 4.r,left: 8.r),
          child: Text(item.subTitle ?? '', style: TextStyle(fontSize: 12.sp, color: Colors.grey),),
        )
      ],
    );

  }

  Widget cellImage(String? url) {

    final img_w = (ScreenUtil().screenWidth - 10) * 0.5;
    final img_h = img_w * 0.5;

    return CachedNetworkImage(
        imageUrl: url ?? '',
        width: img_w,
        height: img_h,
        fit: BoxFit.cover,
        placeholder: (context, url) {
          return Image.asset(ImageConfig.DefaultIcon);
        }
    );
  }
}
