class gitamodal {
  final String text;
  final int chapter_id;
  final int verse_order;

  gitamodal({
    required this.text,
    required this.chapter_id,
    required this.verse_order,
  });

  factory gitamodal.fromMap({required Map data}) {
    return gitamodal(
      chapter_id: data['chapter_id'],
      verse_order: data['verse_order'],
      text: data['text'],
    );
  }
}

class gitamodal2 {
  final String lang;
  final String description;
  final int verseNumber;
  final String authorName;

  gitamodal2(
      {required this.description,
      required this.verseNumber,
      required this.lang,
      required this.authorName});

  factory gitamodal2.fromMap({required Map data}) {
    return gitamodal2(
      description: data['description'],
      verseNumber: data['verseNumber'],
      lang: data['lang'],
      authorName: data['authorName'],
    );
  }
}
