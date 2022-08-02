import 'package:mobx/mobx.dart';
import 'package:u17_flutter/api/home_request.dart';
part 'recommond_store.g.dart';

class Recommond = _Recommond with _$Recommond;

abstract class _Recommond with Store {

  HomeRequest homeRequest = HomeRequest();

  @observable
  ObservableList? recommondList;

  @action
  Future<void> load(int sexType) async {
     homeRequest.getBoutiqueList(sexType).then((result) {
       recommondList = ObservableList.of(result);
    });
  }
}