import 'package:gdg_venezia_app_skeleton/data/entities/about.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/event.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/photo.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/social.dart';

abstract class Repository {
  Future<List<Event>> fetchEvents();
  Future<About> fetchAbout();
  Future<List<Photo>> fetchPhotos();
  Future<List<Social>> fetchSocial();
}