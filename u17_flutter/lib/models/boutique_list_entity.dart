import 'package:u17_flutter/generated/json/base/json_field.dart';
import 'package:u17_flutter/generated/json/boutique_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class BoutiqueListEntity {

	List<dynamic>? galleryItems;
	List<dynamic>? textItems;
	List<BoutiqueListComicLists>? comicLists;
	String? editTime;
  
  BoutiqueListEntity();

  factory BoutiqueListEntity.fromJson(Map<String, dynamic> json) => $BoutiqueListEntityFromJson(json);

  Map<String, dynamic> toJson() => $BoutiqueListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class BoutiqueListComicLists {

	List<BoutiqueListComicListsComics>? comics;
	int? comicType;
	int? canedit;
	String? sortId;
	String? titleIconUrl;
	String? newTitleIconUrl;
	String? description;
	String? itemTitle;
	String? argName;
	int? argValue;
	int? argType;
  
  BoutiqueListComicLists();

  factory BoutiqueListComicLists.fromJson(Map<String, dynamic> json) => $BoutiqueListComicListsFromJson(json);

  Map<String, dynamic> toJson() => $BoutiqueListComicListsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class BoutiqueListComicListsComics {

	int? comicId;
	String? name;
	String? cover;
	List<String>? tags;
	String? subTitle;
	String? description;
	String? cornerInfo;
	@JSONField(name: "short_description")
	String? shortDescription;
	@JSONField(name: "author_name")
	String? authorName;
	@JSONField(name: "is_vip")
	int? isVip;
  
  BoutiqueListComicListsComics();

  factory BoutiqueListComicListsComics.fromJson(Map<String, dynamic> json) => $BoutiqueListComicListsComicsFromJson(json);

  Map<String, dynamic> toJson() => $BoutiqueListComicListsComicsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}