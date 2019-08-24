class Social {
  String title;

  // Used to match the proper icon
  String code;
  String url;

  Social({this.title, this.code, this.url});

  @override
  String toString() {
    return 'Social{title: $title, code: $code, url: $url}';
  }
}
