import 'package:u17_flutter/generated/json/base/json_convert_content.dart';
import 'package:u17_flutter/models/boutique_list_entity.dart';

BoutiqueListEntity $BoutiqueListEntityFromJson(Map<String, dynamic> json) {
	final BoutiqueListEntity boutiqueListEntity = BoutiqueListEntity();
	final List<dynamic>? galleryItems = jsonConvert.convertListNotNull<dynamic>(json['galleryItems']);
	if (galleryItems != null) {
		boutiqueListEntity.galleryItems = galleryItems;
	}
	final List<dynamic>? textItems = jsonConvert.convertListNotNull<dynamic>(json['textItems']);
	if (textItems != null) {
		boutiqueListEntity.textItems = textItems;
	}
	final List<BoutiqueListComicLists>? comicLists = jsonConvert.convertListNotNull<BoutiqueListComicLists>(json['comicLists']);
	if (comicLists != null) {
		boutiqueListEntity.comicLists = comicLists;
	}
	final String? editTime = jsonConvert.convert<String>(json['editTime']);
	if (editTime != null) {
		boutiqueListEntity.editTime = editTime;
	}
	return boutiqueListEntity;
}

Map<String, dynamic> $BoutiqueListEntityToJson(BoutiqueListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['galleryItems'] =  entity.galleryItems;
	data['textItems'] =  entity.textItems;
	data['comicLists'] =  entity.comicLists?.map((v) => v.toJson()).toList();
	data['editTime'] = entity.editTime;
	return data;
}

BoutiqueListComicLists $BoutiqueListComicListsFromJson(Map<String, dynamic> json) {
	final BoutiqueListComicLists boutiqueListComicLists = BoutiqueListComicLists();
	final List<BoutiqueListComicListsComics>? comics = jsonConvert.convertListNotNull<BoutiqueListComicListsComics>(json['comics']);
	if (comics != null) {
		boutiqueListComicLists.comics = comics;
	}
	final int? comicType = jsonConvert.convert<int>(json['comicType']);
	if (comicType != null) {
		boutiqueListComicLists.comicType = comicType;
	}
	final int? canedit = jsonConvert.convert<int>(json['canedit']);
	if (canedit != null) {
		boutiqueListComicLists.canedit = canedit;
	}
	final String? sortId = jsonConvert.convert<String>(json['sortId']);
	if (sortId != null) {
		boutiqueListComicLists.sortId = sortId;
	}
	final String? titleIconUrl = jsonConvert.convert<String>(json['titleIconUrl']);
	if (titleIconUrl != null) {
		boutiqueListComicLists.titleIconUrl = titleIconUrl;
	}
	final String? newTitleIconUrl = jsonConvert.convert<String>(json['newTitleIconUrl']);
	if (newTitleIconUrl != null) {
		boutiqueListComicLists.newTitleIconUrl = newTitleIconUrl;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		boutiqueListComicLists.description = description;
	}
	final String? itemTitle = jsonConvert.convert<String>(json['itemTitle']);
	if (itemTitle != null) {
		boutiqueListComicLists.itemTitle = itemTitle;
	}
	final String? argName = jsonConvert.convert<String>(json['argName']);
	if (argName != null) {
		boutiqueListComicLists.argName = argName;
	}
	final int? argValue = jsonConvert.convert<int>(json['argValue']);
	if (argValue != null) {
		boutiqueListComicLists.argValue = argValue;
	}
	final int? argType = jsonConvert.convert<int>(json['argType']);
	if (argType != null) {
		boutiqueListComicLists.argType = argType;
	}
	return boutiqueListComicLists;
}

Map<String, dynamic> $BoutiqueListComicListsToJson(BoutiqueListComicLists entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['comics'] =  entity.comics?.map((v) => v.toJson()).toList();
	data['comicType'] = entity.comicType;
	data['canedit'] = entity.canedit;
	data['sortId'] = entity.sortId;
	data['titleIconUrl'] = entity.titleIconUrl;
	data['newTitleIconUrl'] = entity.newTitleIconUrl;
	data['description'] = entity.description;
	data['itemTitle'] = entity.itemTitle;
	data['argName'] = entity.argName;
	data['argValue'] = entity.argValue;
	data['argType'] = entity.argType;
	return data;
}

BoutiqueListComicListsComics $BoutiqueListComicListsComicsFromJson(Map<String, dynamic> json) {
	final BoutiqueListComicListsComics boutiqueListComicListsComics = BoutiqueListComicListsComics();
	final int? comicId = jsonConvert.convert<int>(json['comicId']);
	if (comicId != null) {
		boutiqueListComicListsComics.comicId = comicId;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		boutiqueListComicListsComics.name = name;
	}
	final String? cover = jsonConvert.convert<String>(json['cover']);
	if (cover != null) {
		boutiqueListComicListsComics.cover = cover;
	}
	final List<String>? tags = jsonConvert.convertListNotNull<String>(json['tags']);
	if (tags != null) {
		boutiqueListComicListsComics.tags = tags;
	}
	final String? subTitle = jsonConvert.convert<String>(json['subTitle']);
	if (subTitle != null) {
		boutiqueListComicListsComics.subTitle = subTitle;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		boutiqueListComicListsComics.description = description;
	}
	final String? cornerInfo = jsonConvert.convert<String>(json['cornerInfo']);
	if (cornerInfo != null) {
		boutiqueListComicListsComics.cornerInfo = cornerInfo;
	}
	final String? shortDescription = jsonConvert.convert<String>(json['short_description']);
	if (shortDescription != null) {
		boutiqueListComicListsComics.shortDescription = shortDescription;
	}
	final String? authorName = jsonConvert.convert<String>(json['author_name']);
	if (authorName != null) {
		boutiqueListComicListsComics.authorName = authorName;
	}
	final int? isVip = jsonConvert.convert<int>(json['is_vip']);
	if (isVip != null) {
		boutiqueListComicListsComics.isVip = isVip;
	}
	return boutiqueListComicListsComics;
}

Map<String, dynamic> $BoutiqueListComicListsComicsToJson(BoutiqueListComicListsComics entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['comicId'] = entity.comicId;
	data['name'] = entity.name;
	data['cover'] = entity.cover;
	data['tags'] =  entity.tags;
	data['subTitle'] = entity.subTitle;
	data['description'] = entity.description;
	data['cornerInfo'] = entity.cornerInfo;
	data['short_description'] = entity.shortDescription;
	data['author_name'] = entity.authorName;
	data['is_vip'] = entity.isVip;
	return data;
}