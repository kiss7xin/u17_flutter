
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:u17_flutter/common/ImageConfig.dart';

class EmptyLayout extends StatelessWidget  {

  final String tipText;
  final EmptyType tipType;
  final TextStyle? tipTextStyle;
  final double? iconWidth; //不需要高是因为用的BoxFit.cover
  String? tipIcon;

  EmptyLayout({
    this.tipText = "暂无数据",
    this.tipType = EmptyType.DATA_EMPTY,
    this.tipTextStyle,
    this.iconWidth
  });

  @override
  Widget build(BuildContext context) {
    switch(tipType) {
      case EmptyType.LOADING:
        return Center(
          child: CupertinoActivityIndicator(
            radius: 10,
            animating: true,
          ),
        );
      case EmptyType.DATA_EMPTY:
        tipIcon = ImageConfig.EmptyTipImg;
        break;
      case EmptyType.DATA_ERROR:
        tipIcon = ImageConfig.EmptyTipImg;
        break;
      case EmptyType.NET_ERROR:
        tipIcon = ImageConfig.EmptyTipImg;
        break;
    }
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              width: iconWidth ?? 200.r,
              fit: BoxFit.cover,
              image: AssetImage(tipIcon ?? ImageConfig.EmptyTipImg)
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.r, bottom: 100.r),
            child: Text(
              tipText,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0x3D000000))
                  .merge(tipTextStyle),
            ),
          ),
        ],
      ),
    );
  }
}

enum EmptyType {

  ///
  /// 加载数据
  LOADING,

  ///
  /// 暂无数据
  DATA_EMPTY,

  ///
  /// 数据有误
  DATA_ERROR,

  ///
  /// 网络错误
  NET_ERROR,

}
