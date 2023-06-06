import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

part 'questions.freezed.dart';
part 'questions.g.dart';

typedef Questions = (
  OverallEvaluationQuestion,
  ReasonQuestion,
  ReasonQuestion,
  ReasonQuestion,
  ReasonQuestion,
  FreeTextQuestion,
);

extension QuestionsExt<T extends ThreeTypesQuestion> on Questions {
  //対象の質問の取得
  ThreeTypesQuestion targetReasonQuestion({required int id}) {
    final v1 = $1;
    final v2 = $2;
    final v3 = $3;
    final v4 = $4;
    final v5 = $5;
    final v6 = $6;
    final list = [v1, v2, v3, v4, v5, v6];
    return list[id - 1]; //idは1〜6なので
  }

  //理由質問一覧の取得
  List<ReasonQuestion> get reasonQuestions {
    return [$2, $3, $4, $5];
  }

  //質問一覧の取得
  Questions updateQuestion({required int id, required T target}) {
    final v1 = $1;
    final v2 = $2;
    final v3 = $3;
    final v4 = $4;
    final v5 = $5;
    final v6 = $6;

    switch (id) {
      case 1:
        return (target as OverallEvaluationQuestion, v2, v3, v4, v5, v6);
      case 2:
        return (v1, target as ReasonQuestion, v3, v4, v5, v6);
      case 3:
        return (v1, v2, target as ReasonQuestion, v4, v5, v6);
      case 4:
        return (v1, v2, v3, target as ReasonQuestion, v5, v6);
      case 5:
        return (v1, v2, v3, v4, target as ReasonQuestion, v6);
      case 6:
        return (v1, v2, v3, v4, v5, target as FreeTextQuestion);
      default:
        return (v1, v2, v3, v4, v5, v6);
    }
  }
}

const defaultQuestions = (
  OverallEvaluationQuestion(id: 1, answer: OverallEvaluation.good),
  ReasonQuestion(
      id: 2,
      overallEvaluation: OverallEvaluation.good,
      statement: 'The actors were good.',
      answer: false),
  ReasonQuestion(
      id: 3,
      overallEvaluation: OverallEvaluation.good,
      statement: 'The CG was good.',
      answer: false),
  ReasonQuestion(
      id: 4,
      overallEvaluation: OverallEvaluation.bad,
      statement: 'What is the point of this?',
      answer: false),
  ReasonQuestion(
      id: 5,
      overallEvaluation: OverallEvaluation.bad,
      statement: 'I was kind of thirsty.',
      answer: false),
  FreeTextQuestion(id: 6, answer: ''),
);

abstract class Question<T> {
  int get id;
  T get answer; //型は質問によって異なる
}

@freezed
sealed class ThreeTypesQuestion with _$ThreeTypesQuestion implements Question {
  //全体的な評価の質問
  const factory ThreeTypesQuestion.overallEvaluationQuestion({
    required int id,
    required OverallEvaluation answer,
  }) = OverallEvaluationQuestion;
  //全体評価に応じた理由に関する質問
  const factory ThreeTypesQuestion.reasonQuestion({
    required int id,
    required bool answer,
    required OverallEvaluation overallEvaluation, //属する全体評価
    required String statement, //問題文
  }) = ReasonQuestion;
  //自由記述欄（としての質問）
  const factory ThreeTypesQuestion.freeTextQuestion({
    required int id,
    required String answer,
  }) = FreeTextQuestion;

  const ThreeTypesQuestion._();

  factory ThreeTypesQuestion.fromJson(Map<String, Object?> json) =>
      _$ThreeTypesQuestionFromJson(json);
}

enum OverallEvaluation {
  good('Good'),
  bad('Bad');

  final String name;
  const OverallEvaluation(this.name);

  String get buttonLabel => 'Why you choice "$name"?';

  Image? get buttonImage {
    switch (this) {
      case good:
        return Image.asset('assets/images/good.png');
      case bad:
        return Image.asset('assets/images/bad.png');
    }
  }
}

final sendedFlag = StateProvider<bool>((ref) {
  return false;
});

final overallEvaluationProvider = Provider<OverallEvaluation>((ref) {
  return ref.watch(questionsProvider).$1.answer;
});

final reasonQuestionProvider = Provider.family<ReasonQuestion, int>((ref, id) {
  return ref.watch(questionsProvider).targetReasonQuestion(id: id)
      as ReasonQuestion;
});

final questionsProvider =
    StateNotifierProvider<QuestionsNotifier, Questions>((ref) {
  return QuestionsNotifier(ref: ref);
});

class QuestionsNotifier extends StateNotifier<Questions> {
  QuestionsNotifier({
    required this.ref,
  }) : super(defaultQuestions);

  Ref ref;

  void updateOverallEvaluation({required OverallEvaluation answer}) {
    final target = OverallEvaluationQuestion(id: 1, answer: answer);
    state = state.updateQuestion(id: 1, target: target);

    ref.read(sendedFlag.notifier).update((state) => false);
  }

  void upadateReasonQuestion({required int id, required bool answer}) {
    final temp = state.targetReasonQuestion(id: id) as ReasonQuestion;
    final target = temp.copyWith(answer: answer);
    state = state.updateQuestion(id: id, target: target);
  }

  void updateFreeText(String answer) {
    final target = FreeTextQuestion(id: 6, answer: answer);
    state = state.updateQuestion(id: 6, target: target);
  }
}
