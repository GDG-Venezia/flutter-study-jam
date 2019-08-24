import 'package:flutter/material.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/event.dart';
import 'package:gdg_venezia_app_skeleton/data/model/event_model.dart';
import 'package:gdg_venezia_app_skeleton/data/status.dart';
import 'package:provider/provider.dart';

class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The Consumer widget provides the item declared in the ChangeNotifierProvider
    return Consumer<EventModel>(
      builder: (context, eventModel, child) {
        // The response has four states: None, Loading, Completed and Error to update
        // the UI accordingly.
        // This callback is triggered every time notifyListeners() is called from
        // the model
        switch (eventModel.eventListResponse.status) {
          case Status.NONE:
            eventModel.fetchEventList();
            return buildLoader();
          case Status.LOADING:
            print(eventModel.eventListResponse.message);
            return buildLoader();
          case Status.COMPLETED:
            List<Event> eventList = eventModel.eventListResponse.data;
            return buildContent(eventList);
          case Status.ERROR:
            print(eventModel.eventListResponse.message);
            return buildErrorView();
          default:
            // This should never happen!
            // Fair enough to show an empty view.
            return Container();
        }
      },
    );
  }

  Widget buildLoader() {
    // TODO: implement a better looking loader
    return Center(
      child: Text("Loading"),
    );
  }

  Widget buildContent(List<Event> eventList) {
    // TODO: implement the event view
    return Center(child: Text(eventList.toString()));
  }

  Widget buildErrorView() {
    // TODO: implement an error screen
    return Center();
  }
}
