class Joke {
  const Joke({required this.title, required this.description});

  final String title;
  final String description;
}

const List<Joke> jokes = [
  Joke(title: "Bugs", description: "Why do programmers prefer dark mode? Because light attracts bugs."),
  Joke(title: "Coffee", description: "Programmer: a machine that turns coffee into code."),
  Joke(title: "Fridays", description: "Never deploy on a Friday."),
];
