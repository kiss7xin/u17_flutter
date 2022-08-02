import 'package:u17_flutter/service/http_request.dart';
import 'package:u17_flutter/models/boutique_list_entity.dart';

class HomeRequest {
  Future<List<BoutiqueListComicLists>> getBoutiqueList(int sexType) async {

    final url = "comic/boutiqueListNew?sexType=$sexType";

    final result = await HttpRequest.request(url);

    final data = result["data"];
    final returnData = data["returnData"];
    final boutique = BoutiqueListEntity.fromJson(returnData);
    return boutique.comicLists ?? [];
  }
}