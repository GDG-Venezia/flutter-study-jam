import 'package:flutter/material.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/social.dart';
import 'package:gdg_venezia_app_skeleton/data/model/social_model.dart';
import 'package:gdg_venezia_app_skeleton/data/status.dart';
import 'package:provider/provider.dart';

class SocialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The Consumer widget provides the item declared in the ChangeNotifierProvider
    return Consumer<SocialModel>(
      builder: (context, socialModel, child) {
        // The response has four states: None, Loading, Completed and Error to update
        // the UI accordingly.
        // This callback is triggered every time notifyListeners() is called from
        // the model
        switch (socialModel.socialListResponse.status) {
          case Status.NONE:
            socialModel.fetchSocialList();
            return buildLoader();
          case Status.LOADING:
            print(socialModel.socialListResponse.message);
            return buildLoader();
          case Status.COMPLETED:
            List<Social> socialList = socialModel.socialListResponse.data;
            return buildContent(socialList);
          case Status.ERROR:
            print(socialModel.socialListResponse.message);
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

  Widget buildContent(List<Social> socialList) {
    // TODO: implement the event view
    return Center(child: Text(socialList.toString()));
  }

  Widget buildErrorView() {
    // TODO: implement an error screen
    return Center();
  }
}
