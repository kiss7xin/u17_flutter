
import 'package:json_annotation/json_annotation.dart';
part 'boutique_list_model.g.dart';
@JsonSerializable()
class BoutiqueListModel {
  List<dynamic> galleryItems;
  List<dynamic> textItems;
  List<ComicLists> comicLists;
  String editTime;


  BoutiqueListModel({required this.galleryItems, required this.textItems, required this.comicLists, required this.editTime,});

  factory BoutiqueListModel.fromJson(Map<String, dynamic> json) => _$BoutiqueListModelFromJson(json);

  Map<String, dynamic> toJson() =>_$BoutiqueListModelToJson(this);

  static Future<T> request<T>({dynamic builder}) async {
    var res = await classname?.fetch();
    BoutiqueListModel? data;
    try{
      data = BoutiqueListModel.fromJson(res['data']);
    } catch (e) {
      res['errno'] = -99;
      res['msg'] = '格式化数据错误';    
    }
    res['data'] = data;
    return classname?.format<BoutiqueListModel>(res);
    }
}

import 'package:json_annotation/json_annotation.dart';
part 'boutique_list_model.g.dart';
@JsonSerializable()
class ComicLists {
  List<Comics> comics;
  int comicType;
  int canedit;
  String sortId;
  String titleIconUrl;
  String newTitleIconUrl;
  String description;
  String itemTitle;
  String argName;
  int argValue;
  int argType;


  ComicLists({required this.comics, required this.comicType, required this.canedit, required this.sortId, required this.titleIconUrl, required this.newTitleIconUrl, required this.description, required this.itemTitle, required this.argName, required this.argValue, required this.argType,});

  factory ComicLists.fromJson(Map<String, dynamic> json) => _$ComicListsFromJson(json);

  Map<String, dynamic> toJson() =>_$ComicListsToJson(this);

  static Future<T> request<T>({dynamic builder}) async {
    var res = await classname?.fetch();
    ComicLists? data;
    try{
      data = ComicLists.fromJson(res['data']);
    } catch (e) {
      res['errno'] = -99;
      res['msg'] = '格式化数据错误';    
    }
    res['data'] = data;
    return classname?.format<ComicLists>(res);
    }
}

import 'package:json_annotation/json_annotation.dart';
part 'boutique_list_model.g.dart';
@JsonSerializable()
class Comics {
  int comicId;
  String name;
  String cover;
  List<String> tags;
  String subTitle;
  String description;
  String cornerInfo;
  String shortDescription;
  String authorName;
  int isVip;


  Comics({required this.comicId, required this.name, required this.cover, required this.tags, required this.subTitle, required this.description, required this.cornerInfo, required this.shortDescription, required this.authorName, required this.isVip,});

  factory Comics.fromJson(Map<String, dynamic> json) => _$ComicsFromJson(json);

  Map<String, dynamic> toJson() =>_$ComicsToJson(this);

  static Future<T> request<T>({dynamic builder}) async {
    var res = await classname?.fetch();
    Comics? data;
    try{
      data = Comics.fromJson(res['data']);
    } catch (e) {
      res['errno'] = -99;
      res['msg'] = '格式化数据错误';    
    }
    res['data'] = data;
    return classname?.format<Comics>(res);
    }
}