class TodoDto {
  final String id;
  final String title;
  final String description;
  bool isCompleted;
  //TODO: Datetime will be added later

  TodoDto({
    required this.id,
    required this.title,
    required this.description,
    this.isCompleted = false,
  });

  void toggleCompleted() {
    isCompleted = !isCompleted;
  }
}
