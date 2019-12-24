class SurveyItem {
  final String message;
  final String id;
  final List<String> options;
  final List<String> optionKeys;

  SurveyItem(this.message, this.id, this.options, this.optionKeys);

  SurveyItem.fromMap(Map<String,dynamic> data):
    id=data['id'],
    message=data['message'],
    optionKeys=List<String>.from(data['options_key'] ?? []),
    options=List<String>.from(data['options']);
}