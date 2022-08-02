import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class RefreshLayout extends StatelessWidget {
  final Widget? child;
  final OnLoadCallback? onLoadCallback;
  final OnRefreshCallback? onRefreshCallback;
  final int pageNumber = 1;
  final int pageCount = 10;

  RefreshLayout({
    required this.child,
    required this.onRefreshCallback,
    this.onLoadCallback
  });

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
        header: MaterialHeader(),
        child: child ?? Container(),
        footer: MaterialFooter(),
        firstRefresh: false,
        onLoad: onLoad,
        onRefresh: onRefreshCallback);
  }

  Future onLoad() async {
    if (onLoadCallback != null) {
      onLoadCallback!();
    }
  }
}
