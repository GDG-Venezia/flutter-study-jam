import 'package:gdg_venezia_app_skeleton/entities/about.dart';
import 'package:gdg_venezia_app_skeleton/entities/event.dart';
import 'package:gdg_venezia_app_skeleton/entities/photo.dart';
import 'package:gdg_venezia_app_skeleton/entities/social.dart';

abstract class Repository {
  Future<List<Event>> fetchEvents();
  Future<List<About>> fetchAbout();
  Future<List<Photo>> fetchPhotos();
  Future<List<Social>> fetchSocial();
}