// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'todo_model.freezed.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    required int id,
    required String task,
  }) = _TodoModel;
}
