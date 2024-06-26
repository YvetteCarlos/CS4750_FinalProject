  class Note {
    late final String title;
    late final String date;
    late final String dog;
    late final String pot;

   Note({
      required this.title,
      required this.date,
      required this.dog,
      required this.pot,
    });

  Map<String, dynamic> toJson() {
    return {'title': title, 'date': date, 'dog': dog, 'pot': pot,};
  }


  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(title: json['title'], date: json['date'], dog: json['dog'], pot: json['pot'],);
  }
}

