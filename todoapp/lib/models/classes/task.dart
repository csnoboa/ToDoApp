

class Task {
  List<Task> tasks;
  String note;
  DateTime timeToComplete; // time in hours to complete
  bool completed;
  String repeats;
  DateTime deadline;
  List<DateTime> reminders;
  String taskId;
  String title;

  Task(this.title, this.completed, this.taskId);



}