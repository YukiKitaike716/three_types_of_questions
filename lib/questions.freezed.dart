// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThreeTypesQuestion _$ThreeTypesQuestionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'overallEvaluationQuestion':
      return OverallEvaluationQuestion.fromJson(json);
    case 'reasonQuestion':
      return ReasonQuestion.fromJson(json);
    case 'freeTextQuestion':
      return FreeTextQuestion.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ThreeTypesQuestion',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ThreeTypesQuestion {
  int get id => throw _privateConstructorUsedError;
  Object get answer => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, OverallEvaluation answer)
        overallEvaluationQuestion,
    required TResult Function(int id, bool answer,
            OverallEvaluation overallEvaluation, String statement)
        reasonQuestion,
    required TResult Function(int id, String answer) freeTextQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, OverallEvaluation answer)?
        overallEvaluationQuestion,
    TResult? Function(int id, bool answer, OverallEvaluation overallEvaluation,
            String statement)?
        reasonQuestion,
    TResult? Function(int id, String answer)? freeTextQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, OverallEvaluation answer)?
        overallEvaluationQuestion,
    TResult Function(int id, bool answer, OverallEvaluation overallEvaluation,
            String statement)?
        reasonQuestion,
    TResult Function(int id, String answer)? freeTextQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverallEvaluationQuestion value)
        overallEvaluationQuestion,
    required TResult Function(ReasonQuestion value) reasonQuestion,
    required TResult Function(FreeTextQuestion value) freeTextQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverallEvaluationQuestion value)?
        overallEvaluationQuestion,
    TResult? Function(ReasonQuestion value)? reasonQuestion,
    TResult? Function(FreeTextQuestion value)? freeTextQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverallEvaluationQuestion value)?
        overallEvaluationQuestion,
    TResult Function(ReasonQuestion value)? reasonQuestion,
    TResult Function(FreeTextQuestion value)? freeTextQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThreeTypesQuestionCopyWith<ThreeTypesQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreeTypesQuestionCopyWith<$Res> {
  factory $ThreeTypesQuestionCopyWith(
          ThreeTypesQuestion value, $Res Function(ThreeTypesQuestion) then) =
      _$ThreeTypesQuestionCopyWithImpl<$Res, ThreeTypesQuestion>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ThreeTypesQuestionCopyWithImpl<$Res, $Val extends ThreeTypesQuestion>
    implements $ThreeTypesQuestionCopyWith<$Res> {
  _$ThreeTypesQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OverallEvaluationQuestionCopyWith<$Res>
    implements $ThreeTypesQuestionCopyWith<$Res> {
  factory _$$OverallEvaluationQuestionCopyWith(
          _$OverallEvaluationQuestion value,
          $Res Function(_$OverallEvaluationQuestion) then) =
      __$$OverallEvaluationQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, OverallEvaluation answer});
}

/// @nodoc
class __$$OverallEvaluationQuestionCopyWithImpl<$Res>
    extends _$ThreeTypesQuestionCopyWithImpl<$Res, _$OverallEvaluationQuestion>
    implements _$$OverallEvaluationQuestionCopyWith<$Res> {
  __$$OverallEvaluationQuestionCopyWithImpl(_$OverallEvaluationQuestion _value,
      $Res Function(_$OverallEvaluationQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? answer = null,
  }) {
    return _then(_$OverallEvaluationQuestion(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as OverallEvaluation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OverallEvaluationQuestion extends OverallEvaluationQuestion {
  const _$OverallEvaluationQuestion(
      {required this.id, required this.answer, final String? $type})
      : $type = $type ?? 'overallEvaluationQuestion',
        super._();

  factory _$OverallEvaluationQuestion.fromJson(Map<String, dynamic> json) =>
      _$$OverallEvaluationQuestionFromJson(json);

  @override
  final int id;
  @override
  final OverallEvaluation answer;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ThreeTypesQuestion.overallEvaluationQuestion(id: $id, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverallEvaluationQuestion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OverallEvaluationQuestionCopyWith<_$OverallEvaluationQuestion>
      get copyWith => __$$OverallEvaluationQuestionCopyWithImpl<
          _$OverallEvaluationQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, OverallEvaluation answer)
        overallEvaluationQuestion,
    required TResult Function(int id, bool answer,
            OverallEvaluation overallEvaluation, String statement)
        reasonQuestion,
    required TResult Function(int id, String answer) freeTextQuestion,
  }) {
    return overallEvaluationQuestion(id, answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, OverallEvaluation answer)?
        overallEvaluationQuestion,
    TResult? Function(int id, bool answer, OverallEvaluation overallEvaluation,
            String statement)?
        reasonQuestion,
    TResult? Function(int id, String answer)? freeTextQuestion,
  }) {
    return overallEvaluationQuestion?.call(id, answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, OverallEvaluation answer)?
        overallEvaluationQuestion,
    TResult Function(int id, bool answer, OverallEvaluation overallEvaluation,
            String statement)?
        reasonQuestion,
    TResult Function(int id, String answer)? freeTextQuestion,
    required TResult orElse(),
  }) {
    if (overallEvaluationQuestion != null) {
      return overallEvaluationQuestion(id, answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverallEvaluationQuestion value)
        overallEvaluationQuestion,
    required TResult Function(ReasonQuestion value) reasonQuestion,
    required TResult Function(FreeTextQuestion value) freeTextQuestion,
  }) {
    return overallEvaluationQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverallEvaluationQuestion value)?
        overallEvaluationQuestion,
    TResult? Function(ReasonQuestion value)? reasonQuestion,
    TResult? Function(FreeTextQuestion value)? freeTextQuestion,
  }) {
    return overallEvaluationQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverallEvaluationQuestion value)?
        overallEvaluationQuestion,
    TResult Function(ReasonQuestion value)? reasonQuestion,
    TResult Function(FreeTextQuestion value)? freeTextQuestion,
    required TResult orElse(),
  }) {
    if (overallEvaluationQuestion != null) {
      return overallEvaluationQuestion(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OverallEvaluationQuestionToJson(
      this,
    );
  }
}

abstract class OverallEvaluationQuestion extends ThreeTypesQuestion {
  const factory OverallEvaluationQuestion(
      {required final int id,
      required final OverallEvaluation answer}) = _$OverallEvaluationQuestion;
  const OverallEvaluationQuestion._() : super._();

  factory OverallEvaluationQuestion.fromJson(Map<String, dynamic> json) =
      _$OverallEvaluationQuestion.fromJson;

  @override
  int get id;
  @override
  OverallEvaluation get answer;
  @override
  @JsonKey(ignore: true)
  _$$OverallEvaluationQuestionCopyWith<_$OverallEvaluationQuestion>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReasonQuestionCopyWith<$Res>
    implements $ThreeTypesQuestionCopyWith<$Res> {
  factory _$$ReasonQuestionCopyWith(
          _$ReasonQuestion value, $Res Function(_$ReasonQuestion) then) =
      __$$ReasonQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool answer,
      OverallEvaluation overallEvaluation,
      String statement});
}

/// @nodoc
class __$$ReasonQuestionCopyWithImpl<$Res>
    extends _$ThreeTypesQuestionCopyWithImpl<$Res, _$ReasonQuestion>
    implements _$$ReasonQuestionCopyWith<$Res> {
  __$$ReasonQuestionCopyWithImpl(
      _$ReasonQuestion _value, $Res Function(_$ReasonQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? answer = null,
    Object? overallEvaluation = null,
    Object? statement = null,
  }) {
    return _then(_$ReasonQuestion(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as bool,
      overallEvaluation: null == overallEvaluation
          ? _value.overallEvaluation
          : overallEvaluation // ignore: cast_nullable_to_non_nullable
              as OverallEvaluation,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReasonQuestion extends ReasonQuestion {
  const _$ReasonQuestion(
      {required this.id,
      required this.answer,
      required this.overallEvaluation,
      required this.statement,
      final String? $type})
      : $type = $type ?? 'reasonQuestion',
        super._();

  factory _$ReasonQuestion.fromJson(Map<String, dynamic> json) =>
      _$$ReasonQuestionFromJson(json);

  @override
  final int id;
  @override
  final bool answer;
  @override
  final OverallEvaluation overallEvaluation;
//属する全体評価
  @override
  final String statement;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ThreeTypesQuestion.reasonQuestion(id: $id, answer: $answer, overallEvaluation: $overallEvaluation, statement: $statement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReasonQuestion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.overallEvaluation, overallEvaluation) ||
                other.overallEvaluation == overallEvaluation) &&
            (identical(other.statement, statement) ||
                other.statement == statement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, answer, overallEvaluation, statement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReasonQuestionCopyWith<_$ReasonQuestion> get copyWith =>
      __$$ReasonQuestionCopyWithImpl<_$ReasonQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, OverallEvaluation answer)
        overallEvaluationQuestion,
    required TResult Function(int id, bool answer,
            OverallEvaluation overallEvaluation, String statement)
        reasonQuestion,
    required TResult Function(int id, String answer) freeTextQuestion,
  }) {
    return reasonQuestion(id, answer, overallEvaluation, statement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, OverallEvaluation answer)?
        overallEvaluationQuestion,
    TResult? Function(int id, bool answer, OverallEvaluation overallEvaluation,
            String statement)?
        reasonQuestion,
    TResult? Function(int id, String answer)? freeTextQuestion,
  }) {
    return reasonQuestion?.call(id, answer, overallEvaluation, statement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, OverallEvaluation answer)?
        overallEvaluationQuestion,
    TResult Function(int id, bool answer, OverallEvaluation overallEvaluation,
            String statement)?
        reasonQuestion,
    TResult Function(int id, String answer)? freeTextQuestion,
    required TResult orElse(),
  }) {
    if (reasonQuestion != null) {
      return reasonQuestion(id, answer, overallEvaluation, statement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverallEvaluationQuestion value)
        overallEvaluationQuestion,
    required TResult Function(ReasonQuestion value) reasonQuestion,
    required TResult Function(FreeTextQuestion value) freeTextQuestion,
  }) {
    return reasonQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverallEvaluationQuestion value)?
        overallEvaluationQuestion,
    TResult? Function(ReasonQuestion value)? reasonQuestion,
    TResult? Function(FreeTextQuestion value)? freeTextQuestion,
  }) {
    return reasonQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverallEvaluationQuestion value)?
        overallEvaluationQuestion,
    TResult Function(ReasonQuestion value)? reasonQuestion,
    TResult Function(FreeTextQuestion value)? freeTextQuestion,
    required TResult orElse(),
  }) {
    if (reasonQuestion != null) {
      return reasonQuestion(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReasonQuestionToJson(
      this,
    );
  }
}

abstract class ReasonQuestion extends ThreeTypesQuestion {
  const factory ReasonQuestion(
      {required final int id,
      required final bool answer,
      required final OverallEvaluation overallEvaluation,
      required final String statement}) = _$ReasonQuestion;
  const ReasonQuestion._() : super._();

  factory ReasonQuestion.fromJson(Map<String, dynamic> json) =
      _$ReasonQuestion.fromJson;

  @override
  int get id;
  @override
  bool get answer;
  OverallEvaluation get overallEvaluation; //属する全体評価
  String get statement;
  @override
  @JsonKey(ignore: true)
  _$$ReasonQuestionCopyWith<_$ReasonQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FreeTextQuestionCopyWith<$Res>
    implements $ThreeTypesQuestionCopyWith<$Res> {
  factory _$$FreeTextQuestionCopyWith(
          _$FreeTextQuestion value, $Res Function(_$FreeTextQuestion) then) =
      __$$FreeTextQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String answer});
}

/// @nodoc
class __$$FreeTextQuestionCopyWithImpl<$Res>
    extends _$ThreeTypesQuestionCopyWithImpl<$Res, _$FreeTextQuestion>
    implements _$$FreeTextQuestionCopyWith<$Res> {
  __$$FreeTextQuestionCopyWithImpl(
      _$FreeTextQuestion _value, $Res Function(_$FreeTextQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? answer = null,
  }) {
    return _then(_$FreeTextQuestion(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreeTextQuestion extends FreeTextQuestion {
  const _$FreeTextQuestion(
      {required this.id, required this.answer, final String? $type})
      : $type = $type ?? 'freeTextQuestion',
        super._();

  factory _$FreeTextQuestion.fromJson(Map<String, dynamic> json) =>
      _$$FreeTextQuestionFromJson(json);

  @override
  final int id;
  @override
  final String answer;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ThreeTypesQuestion.freeTextQuestion(id: $id, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeTextQuestion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreeTextQuestionCopyWith<_$FreeTextQuestion> get copyWith =>
      __$$FreeTextQuestionCopyWithImpl<_$FreeTextQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, OverallEvaluation answer)
        overallEvaluationQuestion,
    required TResult Function(int id, bool answer,
            OverallEvaluation overallEvaluation, String statement)
        reasonQuestion,
    required TResult Function(int id, String answer) freeTextQuestion,
  }) {
    return freeTextQuestion(id, answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, OverallEvaluation answer)?
        overallEvaluationQuestion,
    TResult? Function(int id, bool answer, OverallEvaluation overallEvaluation,
            String statement)?
        reasonQuestion,
    TResult? Function(int id, String answer)? freeTextQuestion,
  }) {
    return freeTextQuestion?.call(id, answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, OverallEvaluation answer)?
        overallEvaluationQuestion,
    TResult Function(int id, bool answer, OverallEvaluation overallEvaluation,
            String statement)?
        reasonQuestion,
    TResult Function(int id, String answer)? freeTextQuestion,
    required TResult orElse(),
  }) {
    if (freeTextQuestion != null) {
      return freeTextQuestion(id, answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverallEvaluationQuestion value)
        overallEvaluationQuestion,
    required TResult Function(ReasonQuestion value) reasonQuestion,
    required TResult Function(FreeTextQuestion value) freeTextQuestion,
  }) {
    return freeTextQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverallEvaluationQuestion value)?
        overallEvaluationQuestion,
    TResult? Function(ReasonQuestion value)? reasonQuestion,
    TResult? Function(FreeTextQuestion value)? freeTextQuestion,
  }) {
    return freeTextQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverallEvaluationQuestion value)?
        overallEvaluationQuestion,
    TResult Function(ReasonQuestion value)? reasonQuestion,
    TResult Function(FreeTextQuestion value)? freeTextQuestion,
    required TResult orElse(),
  }) {
    if (freeTextQuestion != null) {
      return freeTextQuestion(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FreeTextQuestionToJson(
      this,
    );
  }
}

abstract class FreeTextQuestion extends ThreeTypesQuestion {
  const factory FreeTextQuestion(
      {required final int id,
      required final String answer}) = _$FreeTextQuestion;
  const FreeTextQuestion._() : super._();

  factory FreeTextQuestion.fromJson(Map<String, dynamic> json) =
      _$FreeTextQuestion.fromJson;

  @override
  int get id;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$FreeTextQuestionCopyWith<_$FreeTextQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
