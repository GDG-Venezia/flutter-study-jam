class Event {
  String title;
  int dateMillis;

  Event({this.title, this.dateMillis});

  @override
  String toString() {
    return 'Event{title: $title, dateMillis: $dateMillis}';
  }
}
