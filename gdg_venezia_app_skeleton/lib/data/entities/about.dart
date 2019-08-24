import 'package:gdg_venezia_app_skeleton/data/entities/team_member.dart';

class About {
  String description;
  List<TeamMember> teamList;

  About({this.description, this.teamList});

  @override
  String toString() {
    return 'About{description: $description, teamList: $teamList}';
  }
}
