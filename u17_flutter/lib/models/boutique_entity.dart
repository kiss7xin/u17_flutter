class BoutiqueEntity {
  List<ComicLists>? comicLists;
  String? editTime;

  BoutiqueEntity({this.comicLists, this.editTime});

  BoutiqueEntity.fromJson(Map<String, dynamic> json) {
    if (json['comicLists'] != null) {
      comicLists = <ComicLists>[];
      json['comicLists'].forEach((v) {
        if (v is Map<String, dynamic>) {
          comicLists!.add(new ComicLists.fromJson(v));
        }
      });
    }
    editTime = json['editTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.comicLists != null) {
      data['comicLists'] = this.comicLists!.map((v) => v.toJson()).toList();
    }
    data['editTime'] = this.editTime;
    return data;
  }
}

class ComicLists {
  List<Comics>? comics;
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

  ComicLists(
      {this.comics,
        this.comicType,
        this.canedit,
        this.sortId,
        this.titleIconUrl,
        this.newTitleIconUrl,
        this.description,
        this.itemTitle,
        this.argName,
        this.argValue,
        this.argType});

  ComicLists.fromJson(Map<String, dynamic> json) {
    if (json['comics'] != null) {
      comics = <Comics>[];
      json['comics'].forEach((v) {
        comics!.add(new Comics.fromJson(v));
      });
    }
    comicType = json['comicType'];
    canedit = json['canedit'];
    sortId = json['sortId'];
    titleIconUrl = json['titleIconUrl'];
    newTitleIconUrl = json['newTitleIconUrl'];
    description = json['description'];
    itemTitle = json['itemTitle'];
    argName = json['argName'];
    argValue = json['argValue'];
    argType = json['argType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.comics != null) {
      data['comics'] = this.comics!.map((v) => v.toJson()).toList();
    }
    data['comicType'] = this.comicType;
    data['canedit'] = this.canedit;
    data['sortId'] = this.sortId;
    data['titleIconUrl'] = this.titleIconUrl;
    data['newTitleIconUrl'] = this.newTitleIconUrl;
    data['description'] = this.description;
    data['itemTitle'] = this.itemTitle;
    data['argName'] = this.argName;
    data['argValue'] = this.argValue;
    data['argType'] = this.argType;
    return data;
  }
}

class Comics {
  int? comicId;
  String? name;
  String? cover;
  List<String>? tags;
  String? subTitle;
  String? description;
  String? cornerInfo;
  String? shortDescription;
  String? authorName;
  int? isVip;

  Comics(
      {this.comicId,
        this.name,
        this.cover,
        this.tags,
        this.subTitle,
        this.description,
        this.cornerInfo,
        this.shortDescription,
        this.authorName,
        this.isVip});

  Comics.fromJson(Map<String, dynamic> json) {
    comicId = json['comicId'];
    name = json['name'];
    cover = json['cover'];
    if (json['tags'] != null) {
      tags = (json['tags'] as List<dynamic>).cast<String>();
    }
    subTitle = json['subTitle'];
    description = json['description'];
    cornerInfo = json['cornerInfo'];
    shortDescription = json['short_description'];
    authorName = json['author_name'];
    isVip = json['is_vip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['comicId'] = this.comicId;
    data['name'] = this.name;
    data['cover'] = this.cover;
    data['tags'] = this.tags;
    data['subTitle'] = this.subTitle;
    data['description'] = this.description;
    data['cornerInfo'] = this.cornerInfo;
    data['short_description'] = this.shortDescription;
    data['author_name'] = this.authorName;
    data['is_vip'] = this.isVip;
    return data;
  }
}
