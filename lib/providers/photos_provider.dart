import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/models/photos_model/photo_model.dart';
import 'package:riverpod_task/view_model/photos_view_model.dart';

final photosProvider = FutureProvider<List<PhotoModel>>((ref) async {
  try {
    final response = await PhotosViewModel().fetchPhotos();
    return response;
  } catch (e) {
    return Future.error(e);
  }
});
