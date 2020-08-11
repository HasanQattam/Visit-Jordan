class WallpaperModel {
  String photographer;
  String photographerUrl;
  int photograoherID;
  SrcModel src;
  WallpaperModel(
      {this.photograoherID, this.photographer, this.photographerUrl, this.src});

  factory WallpaperModel.fromMap(Map<String, dynamic> jsonData) {
    return WallpaperModel(
      src: SrcModel.fromMap(jsonData["src"]),
      photographerUrl: jsonData["photographer_url"],
      photograoherID: jsonData["photographer_id"],
      photographer: jsonData["photographer"],
    );
  }
}

class SrcModel {
  String original;
  String small;
  String portrait;
  SrcModel({this.original, this.portrait, this.small});

  factory SrcModel.fromMap(Map<String, dynamic> jsonData) {
    return SrcModel(
      portrait: jsonData["portrait"],
      original: jsonData["original"],
      small: jsonData["small"],
    );
  }
}
