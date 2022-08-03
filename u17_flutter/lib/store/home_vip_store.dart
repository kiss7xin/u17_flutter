import 'package:mobx/mobx.dart';
import 'package:u17_flutter/api/home_request.dart';
part 'home_vip_store.g.dart';

class HomeVip = _HomeVip with _$HomeVip;

abstract class _HomeVip with Store {

  HomeRequest homeRequest = HomeRequest();

  @observable
  ObservableList? vipList;

  @action
  Future<void> refresh() async {
    homeRequest.getVipList().then((result) {
      vipList = ObservableList.of(result);
    });
  }
}