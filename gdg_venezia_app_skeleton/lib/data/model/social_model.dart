import 'package:flutter/foundation.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/social.dart';
import 'package:gdg_venezia_app_skeleton/data/mock_repository.dart';
import 'package:gdg_venezia_app_skeleton/data/repository.dart';
import 'package:gdg_venezia_app_skeleton/data/response.dart';

class SocialModel with ChangeNotifier {
  Repository repository = MockRepository();
  Response<List<Social>> _socialListResponse = Response.none();

  Response<List<Social>> get socialListResponse => _socialListResponse;

  fetchSocialList({bool refresh = false}) async {
    // If one day we have a refresh tool, we need to show the loading
    if (refresh) {
      _socialListResponse = Response.loading("Loading Social List");
      notifyListeners();
    }
    try {
      List<Social> socialList = await repository.fetchSocial();
      _socialListResponse = Response.completed(socialList);
      notifyListeners();
    } catch (e) {
      // With mocked data this should never happen but let's get prepared for
      // the network implementation
      _socialListResponse = Response.error(e.toString());
      notifyListeners();
    }
  }
}
