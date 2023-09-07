class Referee{
  String name;
  String email;
  String title;
  String phone;

  Referee({
    required this.name,
    required this.email,
    required this.title,
    required this.phone,
  });
}

class Connections{
  List<Referee> referees = [
    Referee(name: "Hezion Kwena", email: "sample@gmail.com", title: "Security engineer", phone: "324353436"),
    Referee(name: "Peter Juma", email: "sample@gmail.com", title: "Software engineer", phone: "324353436"),
    Referee(name: "Mike Mboya", email: "sample@gmail.com", title: "Software engineer", phone: "324353436"),
  ];
}