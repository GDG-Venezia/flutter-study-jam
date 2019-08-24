import 'package:flutter/foundation.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/event.dart';
import 'package:gdg_venezia_app_skeleton/data/mock_repository.dart';
import 'package:gdg_venezia_app_skeleton/data/repository.dart';
import 'package:gdg_venezia_app_skeleton/data/response.dart';

class EventModel with ChangeNotifier {
  Repository repository = MockRepository();
  Response<List<Event>> _eventListResponse = Response.none();

  Response<List<Event>> get eventListResponse => _eventListResponse;

  fetchEventList({bool refresh = false}) async {
    // If one day we have a refresh tool, we need to show the loading
    if (refresh) {
      _eventListResponse = Response.loading("Loading Events");
      notifyListeners();
    }
    try {
      List<Event> eventList = await repository.fetchEvents();
      _eventListResponse = Response.completed(eventList);
      notifyListeners();
    } catch (e) {
      // With mocked data this should never happen but let's get prepared for
      // the network implementation
      _eventListResponse = Response.error(e.toString());
      notifyListeners();
    }
  }
}
