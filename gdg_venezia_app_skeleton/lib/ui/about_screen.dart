import 'package:flutter/material.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/about.dart';
import 'package:gdg_venezia_app_skeleton/data/model/about_model.dart';
import 'package:gdg_venezia_app_skeleton/data/status.dart';
import 'package:provider/provider.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The Consumer widget provides the item declared in the ChangeNotifierProvider
    return Consumer<AboutModel>(
      builder: (context, aboutModel, child) {
        // The response has three states: None, Loading, Completed and Error to update
        // the UI accordingly.
        // This callback is triggered every time notifyListeners() is called from
        // the model
        switch (aboutModel.aboutResponse.status) {
          case Status.NONE:
            aboutModel.fetchAboutData();
            return buildLoader();
          case Status.LOADING:
            print(aboutModel.aboutResponse.message);
            return buildLoader();
          case Status.COMPLETED:
            About about = aboutModel.aboutResponse.data;
            return buildContent(about);
          case Status.ERROR:
            print(aboutModel.aboutResponse.message);
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

  Widget buildContent(About about) {
    // TODO: implement the about view
    return Center(child: Text(about.toString()));
  }

  Widget buildErrorView() {
    // TODO: implement an error screen
    return Center();
  }
}
