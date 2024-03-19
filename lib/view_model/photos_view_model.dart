import 'package:flutter/material.dart';
import 'package:riverpod_task/models/photos_model/photo_model.dart';
import 'package:riverpod_task/services/photos_web_services.dart';

class PhotosViewModel {
  final _services = PhotoWebServices();

  Future<List<PhotoModel>> fetchPhotos() async {
    try {
      final response = await _services.fetchPhotos();

      List<PhotoModel> photoModels = [];
      for (var data in response) {
        photoModels.add(PhotoModel.fromJson(data));
        debugPrint("Length: ${photoModels.length}");
      }
      return photoModels;
    } catch (e) {
      print(e);

      rethrow;
    }
  }
}
