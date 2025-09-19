class Task {
  final int id;
  final String title;
  final String description;
  final DateTime dueDate;
  final String priority; // High, Medium, Low
  final String status;   // To-Do, In Progress, Done
  final int assignedUserId;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.priority,
    required this.status,
    required this.assignedUserId,
  });
}
