import 'package:flutter/foundation.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/about.dart';
import 'package:gdg_venezia_app_skeleton/data/mock_repository.dart';
import 'package:gdg_venezia_app_skeleton/data/repository.dart';
import 'package:gdg_venezia_app_skeleton/data/response.dart';

class AboutModel with ChangeNotifier {
  Repository repository = MockRepository();
  Response<About> _aboutResponse = Response.none();

  Response<About> get aboutResponse => _aboutResponse;

  fetchAboutData({bool refresh = false}) async {
    // If one day we have a refresh tool, we need to show the loading
    if (refresh) {
      _aboutResponse = Response.loading("Loading about data");
      notifyListeners();
    }
    try {
      About aboutData = await repository.fetchAbout();
      _aboutResponse = Response.completed(aboutData);
      notifyListeners();
    } catch (e) {
      // With mocked data this should never happen but let's get prepared for
      // the network implementation
      _aboutResponse = Response.error(e.toString());
      notifyListeners();
    }
  }
}
