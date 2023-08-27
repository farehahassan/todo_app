class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static Set<ToDo> todoList() {
    return {
      ToDo(id: "01", todoText: "Morning Exercise", isDone: true),
      ToDo(id: "02", todoText: "Buy Groceries", isDone: true),
      ToDo(id: "03", todoText: "Check Emails"),
      ToDo(id: "04", todoText: "Team Meating"),
      ToDo(id: "05", todoText: "Morning Exercise"),
      ToDo(id: "06", todoText: "Morning Exercise"),
      ToDo(id: "07", todoText: "Morning Exercise"),
      ToDo(id: "08", todoText: "Morning Exercise"),
      ToDo(id: "09", todoText: "Morning Exercise")
    };
  }
}
