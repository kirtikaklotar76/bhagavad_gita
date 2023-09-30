import 'package:flutter/material.dart';

class JSONModal {
  final int userId;
  final int id;
  final String title;
  final String body;

  JSONModal({
    required this.body,
    required this.title,
    required this.id,
    required this.userId,
  });

  factory JSONModal.fromMap({required Map data}) {
    return JSONModal(
      body: data['body'],
      title: data['title'],
      id: data['id'],
      userId: data['userId'],
    );
  }
}
