class TeamMember {
  String firstName;
  String lastName;
  String pictureUrl;
  String shortDescription;
  String longDescription;
  String twitterUrl;
  String linkedinUrl;

  TeamMember(
      {this.firstName,
      this.lastName,
      this.pictureUrl,
      this.shortDescription,
      this.longDescription,
      this.twitterUrl,
      this.linkedinUrl});

  @override
  String toString() {
    return 'TeamMember{firstName: $firstName, lastName: $lastName, pictureUrl: $pictureUrl, shortDescription: $shortDescription, longDescription: $longDescription, twitterUrl: $twitterUrl, linkedinUrl: $linkedinUrl}';
  }
}
