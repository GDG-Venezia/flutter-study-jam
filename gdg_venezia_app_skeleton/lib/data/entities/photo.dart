class Photo {
  String title;
  String url;
  List<String> tags;

  Photo({this.title, this.url, this.tags});

  @override
  String toString() {
    return 'Photo{title: $title, url: $url, tags: $tags}';
  }
}
