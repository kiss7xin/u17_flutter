import 'package:u17_flutter/models/boutique_entity.dart';
import 'package:u17_flutter/service/http_request.dart';
import 'package:u17_flutter/models/boutique_entity.dart';

class HomeRequest {
  Future<List<ComicLists>> getBoutiqueList(int sexType) async {
    final url = "comic/boutiqueListNew?sexType=$sexType";
    final result = await HttpRequest.request(url);
    final data = result["data"]['returnData'];
    final boutique = BoutiqueEntity.fromJson(data);
    return boutique.comicLists ?? [];
  }

  Future<List<ComicLists>> getVipList() async {
    final url = "list/vipList";
    final result = await HttpRequest.request(url);
    final data = result["data"]['returnData'];

    final List<ComicLists> newVipList = [];
    if (data['newVipList'] != null) {
      data['newVipList'].forEach((v) {
        if (v is Map<String, dynamic>) {
          newVipList.add(new ComicLists.fromJson(v));
        }
      });
    }
    return newVipList;
  }


}