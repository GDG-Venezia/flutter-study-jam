import 'package:gdg_venezia_app_skeleton/data/repository.dart';
import 'package:gdg_venezia_app_skeleton/entities/about.dart';
import 'package:gdg_venezia_app_skeleton/entities/event.dart';
import 'package:gdg_venezia_app_skeleton/entities/photo.dart';
import 'package:gdg_venezia_app_skeleton/entities/social.dart';

// A Mock repository that returns harcoded data
class MockRepository extends Repository {
  // Implementation of the Singleton. The factory keyword provides a construct
  // that doesn't always create a new instance of the class
  static final MockRepository _repository = new MockRepository._internal();

  factory MockRepository() {
    return _repository;
  }

  // Internal constructor
  MockRepository._internal();

  @override
  Future<List<About>> fetchAbout() {
    // TODO: implement fetchAbout
    return null;
  }

  @override
  Future<List<Event>> fetchEvents() {
    // TODO: implement fetchEvents
    return null;
  }

  @override
  Future<List<Photo>> fetchPhotos() {
    // TODO: implement fetchPhotos
    return null;
  }

  @override
  Future<List<Social>> fetchSocial() {
    final socialList = [
      Social(
          title: "Facebook",
          code: "facebook",
          url: "https://www.facebook.com/gdgvenezia"),
      Social(
          title: "Twitter",
          code: "twitter",
          url: "https://twitter.com/gdgvenezia"),
      Social(
          title: "YouTube",
          code: "youtube",
          url: "https://www.youtube.com/channel/UCnXHsg8plcHc_NuCETV2k6Q"),
      Social(
          title: "Meetup",
          code: "meetup",
          url: "https://www.meetup.com/it-IT/GDG-Venezia"),
      Social(
          title: "Instagram",
          code: "instagram",
          url: "https://www.instagram.com/gdg_venezia"),
      Social(
          title: "GitHub",
          code: "github",
          url: "https://github.com/GDG-Venezia"),
      Social(
          title: "Telegram",
          code: "telegram",
          url: "https://telegram.me/joinchat/CrhySAbNTvs7BZACfpQyyQ"),
      Social(title: "Mail", code: "mail", url: "mailto:veneziagdg@gmail.com")
    ];
    return performFakeNetworkCall(socialList);
  }

  // Returns the data after some seconds to fake a network call
  Future<dynamic> performFakeNetworkCall(dynamic data) {
    return Future.delayed(Duration(seconds: 2), () => data);
  }
}

/*



 */
