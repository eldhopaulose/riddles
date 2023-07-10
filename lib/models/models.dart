class Riddles {
  String? title;
  String? question;
  String? answer;

  Riddles({this.title, this.question, this.answer});

  Riddles.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    question = json['question'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> modelData = new Map<String, dynamic>();
    modelData['title'] = title;
    modelData['question'] = question;
    modelData['answer'] = answer;
    return modelData;
  }
}
