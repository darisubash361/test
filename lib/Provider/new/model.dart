// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ApiModel {
  final int id;
  final String title;
  final String description;

  ApiModel({required this.id, required this.title, required this.description});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'body': description,
    };
  }

  factory ApiModel.fromMap(Map<String, dynamic> map) {
    return ApiModel(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['body'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ApiModel.fromJson(String source) =>
      ApiModel.fromMap(json.decode(source) as Map<String, dynamic>);

  ApiModel copyWith({
    int? id,
    String? title,
    String? description,
  }) {
    return ApiModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }
}
