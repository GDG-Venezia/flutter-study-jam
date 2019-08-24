import 'package:flutter/foundation.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/photo.dart';
import 'package:gdg_venezia_app_skeleton/data/mock_repository.dart';
import 'package:gdg_venezia_app_skeleton/data/repository.dart';
import 'package:gdg_venezia_app_skeleton/data/response.dart';

class PhotoModel with ChangeNotifier {
  Repository repository = MockRepository();
  Response<List<Photo>> _photoListResponse = Response.none();

  Response<List<Photo>> get photoListResponse => _photoListResponse;

  fetchPhotoList({bool refresh = false}) async {
    // If one day we have a refresh tool, we need to show the loading
    if (refresh) {
      _photoListResponse = Response.loading("Fetching Photos");
      notifyListeners();
    }
    try {
      List<Photo> photoList = await repository.fetchPhotos();
      _photoListResponse = Response.completed(photoList);
      notifyListeners();
    } catch (e) {
      // With mocked data this should never happen but let's get prepared for
      // the network implementation
      _photoListResponse = Response.error(e.toString());
      notifyListeners();
    }
  }
}
