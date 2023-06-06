import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'questions.dart';

class ThreeTypesQuestionsPage extends ConsumerWidget {
  const ThreeTypesQuestionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(questionsProvider, (previous, next) {
      ref.read(sendedFlag.notifier).update((state) => false);
    });
    final textTheme = Theme.of(context).textTheme;

    final selectedOverallEvaluation = ref.watch(overallEvaluationProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Three Types of Quesitons',
          style: textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => FocusScope.of(context).unfocus(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Gap(32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _OverallEvaluationButton(
                        selectedOverallEvaluation: selectedOverallEvaluation,
                        buttonOverallEvaluation: OverallEvaluation.good,
                      ),
                      const Gap(32),
                      _OverallEvaluationButton(
                        selectedOverallEvaluation: selectedOverallEvaluation,
                        buttonOverallEvaluation: OverallEvaluation.bad,
                      ),
                    ],
                  ),
                  const _SecondHalfContent(),
                  const Gap(16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SecondHalfContent extends ConsumerWidget {
  const _SecondHalfContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedOverallEvaluation = ref.watch(overallEvaluationProvider);

    final reasonQuestions = ref.watch(questionsProvider).reasonQuestions;

    final flag = ref.watch(sendedFlag);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Gap(32),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Text(
            selectedOverallEvaluation.buttonLabel,
          ),
        ),
        const Gap(32),
        for (final question in reasonQuestions)
          if (question.overallEvaluation == selectedOverallEvaluation)
            _ReasonQuestionCheckBox(question: question),
        const Gap(32),
        const _TextFieldSample(),
        const Gap(32),
        TextButton(
          child: const Text('send'),
          onPressed: () =>
              {ref.read(sendedFlag.notifier).update((state) => true)},
        ),
        // if (flag) Text(ref.watch(request).toString())
      ],
    );
  }
}

class _ReasonQuestionCheckBox extends ConsumerWidget {
  const _ReasonQuestionCheckBox({
    Key? key,
    required this.question,
  }) : super(key: key);

  final ReasonQuestion question;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CheckboxListTile(
      dense: true,
      title: Text(
        question.statement,
      ),
      controlAffinity: ListTileControlAffinity.leading,
      value: question.answer,
      onChanged: (bool? answer) {
        ref
            .read(questionsProvider.notifier)
            .upadateReasonQuestion(id: question.id, answer: answer ?? false);
      },
    );
  }
}

class _OverallEvaluationButton extends ConsumerWidget {
  const _OverallEvaluationButton(
      {Key? key,
      required this.selectedOverallEvaluation,
      required this.buttonOverallEvaluation})
      : super(key: key);

  final OverallEvaluation selectedOverallEvaluation;
  final OverallEvaluation buttonOverallEvaluation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => ref
          .read(questionsProvider.notifier)
          .updateOverallEvaluation(answer: buttonOverallEvaluation),
      child: Container(
        decoration: BoxDecoration(
          color: selectedOverallEvaluation == buttonOverallEvaluation
              ? Colors.lightBlue.shade100
              : Colors.white,
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 16, left: 32, right: 32, bottom: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buttonOverallEvaluation.buttonImage ?? const SizedBox.shrink(),
              const Gap(8),
              Text(
                buttonOverallEvaluation.name,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _TextFieldSample extends ConsumerWidget {
  const _TextFieldSample();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 250,
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Free Text',
        ),
        onChanged: (value) =>
            ref.read(questionsProvider.notifier).updateFreeText(value),
      ),
    );
  }
}
