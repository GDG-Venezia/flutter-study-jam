# GDG Venezia App Skeleton

This the skeleton of a Flutter App that will be during the Flutter Study Jam of the GDG Venezia

Please refer to the [Slides](http://bit.ly/flutter-study-jam-slide) for the wireframes and for the detail about the study jam

## Instruction

The business logic of this skeleton is already implemented. All the widgets that must be edited can be found in the package `lib/ui`:

- `about_screen.dart`
- `event_screen.dart`
- `photo_screen.dart`
- `social_screen.dart`

In each widget, there are three methods to implement, that correspond to what is rendered respectively: 
- when the data are loading
```
 Widget buildLoader() {
    // TODO: implement a better looking loader
    return Center(
      child: Text("Loading"),
    );
  }
```
- when the loading is completed
```
  Widget buildContent(About about) {
    // TODO: implement the about view
    return Center(child: Text(about.toString()));
  }
```
- and when there is an error:

```
  Widget buildErrorView() {
    // TODO: implement an error screen
    return Center();
  }
```