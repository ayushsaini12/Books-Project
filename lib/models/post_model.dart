// To parse this JSON data, do
//
//     final postDisplay = postDisplayFromJson(jsonString);

import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

PostDisplay postDisplayFromJson(String str) => PostDisplay.fromJson(json.decode(str));

String postDisplayToJson(PostDisplay data) => json.encode(data.toJson());

class PostDisplay {
  PostDisplay({
    required this.id,
    required this.uid,
    required this.caption,
    required this.image,
    // required this.time,
  });

  ObjectId id;
  String uid;
  String caption;
  String image;
  // int time;

  factory PostDisplay.fromJson(Map<String, dynamic> json) => PostDisplay(
    id: json["_id"],
    uid: json["uid"],
    caption: json["caption"],
    image: json["image"],
    // time: json["time"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "uid": uid,
    "caption": caption,
    "image": image,
    // "time" : time,
  };
}
