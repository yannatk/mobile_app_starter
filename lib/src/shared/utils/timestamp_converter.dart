import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampJsonConverter implements JsonConverter<dynamic, dynamic> {
  const TimestampJsonConverter();

  @override
  dynamic fromJson(dynamic data) {
    if (data is String) {
      return DateTime.parse(data);
    } else {
      return null;
    }
  }

  @override
  Timestamp toJson(dynamic dateTime) {
    final timestamp = Timestamp.fromDate(dateTime);
    return timestamp;
  }
}
