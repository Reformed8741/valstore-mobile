class FirebaseSkin {
  String? name;
  String? offerId;
  String? skinId;
  List<Chroma>? chromas;
  List<Level>? levels;
  int? cost;
  String? icon;
  ContentTier? contentTier;

  FirebaseSkin(
      {this.name,
      this.offerId,
      this.skinId,
      this.cost,
      this.icon,
      this.contentTier,
      this.chromas,
      this.levels});

  FirebaseSkin.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    offerId = json['offer_id'];
    skinId = json['skin_id'];
    cost = json['cost'];
    icon = json['icon'];
    contentTier = json['content_tier'] != null
        ? ContentTier.fromJson(json['content_tier'])
        : null;
    if (json['chromas'] != null) {
      chromas = <Chroma>[];
      json['chromas'].forEach((c) {
        chromas!.add(Chroma.fromJson(c));
      });
    }
    if (json['levels'] != null) {
      levels = <Level>[];
      json['levels'].forEach((c) {
        levels!.add(Level.fromJson(c));
      });
    }
  }
}

class ContentTier {
  String? name;
  String? color;
  String? icon;

  ContentTier({this.name, this.color, this.icon});

  ContentTier.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    color = json['color'];
    icon = json['icon'];
  }
}

class Chroma {
  String? assetPath;
  String? displayIcon;
  String? displayName;
  String? fullRender;
  String? streamedVideo;
  String? swatch;
  String? uuid;

  Chroma(
      {this.assetPath,
      this.displayIcon,
      this.displayName,
      this.fullRender,
      this.streamedVideo,
      this.swatch,
      this.uuid});

  Chroma.fromJson(Map<String, dynamic> json) {
    assetPath = json['assetPath'];
    displayIcon = json['displayIcon'];
    displayName = json['displayName'];
    fullRender = json['fullRender'];
    streamedVideo = json['streamedVideo'];
    swatch = json['swatch'];
    uuid = json['uuid'];
  }
}

class Level {
  String? assetPath;
  String? displayIcon;
  String? displayName;
  String? fullRender;
  String? streamedVideo;
  String? swatch;
  String? uuid;

  Level(
      {this.assetPath,
      this.displayIcon,
      this.displayName,
      this.fullRender,
      this.streamedVideo,
      this.swatch,
      this.uuid});

  Level.fromJson(Map<String, dynamic> json) {
    assetPath = json['assetPath'];
    displayIcon = json['displayIcon'];
    displayName = json['displayName'];
    fullRender = json['fullRender'];
    streamedVideo = json['streamedVideo'];
    swatch = json['swatch'];
    uuid = json['uuid'];
  }
}
