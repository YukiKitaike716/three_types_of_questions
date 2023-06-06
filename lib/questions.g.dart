// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OverallEvaluationQuestion _$$OverallEvaluationQuestionFromJson(
        Map<String, dynamic> json) =>
    _$OverallEvaluationQuestion(
      id: json['id'] as int,
      answer: $enumDecode(_$OverallEvaluationEnumMap, json['answer']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OverallEvaluationQuestionToJson(
        _$OverallEvaluationQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answer': _$OverallEvaluationEnumMap[instance.answer]!,
      'runtimeType': instance.$type,
    };

const _$OverallEvaluationEnumMap = {
  OverallEvaluation.good: 'good',
  OverallEvaluation.bad: 'bad',
};

_$ReasonQuestion _$$ReasonQuestionFromJson(Map<String, dynamic> json) =>
    _$ReasonQuestion(
      id: json['id'] as int,
      answer: json['answer'] as bool,
      overallEvaluation:
          $enumDecode(_$OverallEvaluationEnumMap, json['overallEvaluation']),
      statement: json['statement'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ReasonQuestionToJson(_$ReasonQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answer': instance.answer,
      'overallEvaluation':
          _$OverallEvaluationEnumMap[instance.overallEvaluation]!,
      'statement': instance.statement,
      'runtimeType': instance.$type,
    };

_$FreeTextQuestion _$$FreeTextQuestionFromJson(Map<String, dynamic> json) =>
    _$FreeTextQuestion(
      id: json['id'] as int,
      answer: json['answer'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FreeTextQuestionToJson(_$FreeTextQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answer': instance.answer,
      'runtimeType': instance.$type,
    };
