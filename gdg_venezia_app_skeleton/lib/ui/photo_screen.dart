import 'package:flutter/material.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/photo.dart';
import 'package:gdg_venezia_app_skeleton/data/model/photo_model.dart';
import 'package:gdg_venezia_app_skeleton/data/status.dart';
import 'package:provider/provider.dart';

class PhotoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The Consumer widget provides the item declared in the ChangeNotifierProvider
    return Consumer<PhotoModel>(
      builder: (context, photoModel, child) {
        // The response has four states: None, Loading, Completed and Error to update
        // the UI accordingly.
        // This callback is triggered every time notifyListeners() is called from
        // the model
        switch (photoModel.photoListResponse.status) {
          case Status.NONE:
            photoModel.fetchPhotoList();
            return buildLoader();
          case Status.LOADING:
            print(photoModel.photoListResponse.message);
            return buildLoader();
          case Status.COMPLETED:
            List<Photo> photoList = photoModel.photoListResponse.data;
            return buildContent(photoList);
          case Status.ERROR:
            print(photoModel.photoListResponse.message);
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

  Widget buildContent(List<Photo> photoList) {
    // TODO: implement the event view
    return Center(child: Text(photoList.toString()));
  }

  Widget buildErrorView() {
    // TODO: implement an error screen
    return Center();
  }
}
