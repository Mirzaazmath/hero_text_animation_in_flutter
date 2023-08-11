class Actor{
  final String name;
  final String image;
  final String born;
  Actor({required this.image,required this.name,required this.born});
}

List<Actor>actorlist=[
  Actor(image: "assets/ben.webp", name: "Ben Stiller", born: "Born: 30 November 1965 (age 57 years),"),
  Actor(image: "assets/morgon.jpeg", name: "Morgan Freeman", born: "Born: 1 June 1937 (age 86 years),"),
  Actor(image: "assets/patrick.jpeg", name: "Patrick Stewart", born: "13 July 1940 (age 83 years),"),
];