class ListOfMoods {
  ListOfMoods({
    this.moods,
  });

  List<dynamic> moods;

  factory ListOfMoods.fromJson(List<dynamic> json) => ListOfMoods(
    moods: json,
  );
}

class MoodElement {
  MoodElement({
    this.mood,
    this.moodImage,
  });

  String mood;
  String moodImage;

  factory MoodElement.fromJson(Map<String, dynamic> json) => MoodElement(
    mood: json["mood"],
    moodImage: json["moodImage"],
  );
}

