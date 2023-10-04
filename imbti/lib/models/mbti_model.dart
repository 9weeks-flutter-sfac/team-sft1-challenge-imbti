// ignore_for_file: public_member_api_docs, sort_constructors_first
class MBTIModel {
  final String type; // MBTI 유형
  final String description; // 키워드
  final List<String> strengths; // 강점
  final List<String> weaknesses; // 약점

  MBTIModel({
    required this.type,
    required this.description,
    required this.strengths,
    required this.weaknesses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'description': description,
      'strengths': strengths,
      'weaknesses': weaknesses,
    };
  }

  factory MBTIModel.fromMap(Map<String, dynamic> map) {
    return MBTIModel(
      type: map['type'] as String,
      description: map['description'] as String,
      strengths: List<String>.from(map['strengths'] as List),
      weaknesses: List<String>.from(map['weaknesses'] as List),
    );
  }
}
