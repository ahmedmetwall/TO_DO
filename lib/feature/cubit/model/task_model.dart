// ignore_for_file: public_member_api_docs, sort_constructors_first
class Task {
  final String title;
  final String description;
  bool isComplete;

  Task({
    required this.title,
    required this.description,
    required this.isComplete,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'describtion': description,
      'isComplete': isComplete,
    };
  }

  Task.fromMap(Map<String, dynamic> map)
    : title = map['title'] as String,
      description = map['describtion'] as String,
      isComplete = map['isComplete'] as bool;
}
