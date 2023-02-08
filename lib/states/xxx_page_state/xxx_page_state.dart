import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'xxx_page_state.freezed.dart';
part 'xxx_page_state.g.dart';

@freezed
class XxxPageState with _$XxxPageState {
  const factory XxxPageState({
    @Default('') String name,
    @Default(0) int count,
    @Default(false) bool isLoading,
    @Default(0.0) double musicVolume,
    @Default(0) int timerCount,
  }) = _XxxPageState;

  factory XxxPageState.fromJson(Map<String, dynamic> json) =>
      _$XxxPageStateFromJson(json);
}

///
/// freezedファイルを作成した場合自動生成コマンドをターミナルで実行しない限り
/// 上記でいうところの3行目,4行目,7行目,14行目,16行目,17行目などでエラーが出続けます
/// ですので以下のコマンドをAndroidStudio内のターミナルで実行してください
///
/// TODO ::: flutter pub run build_runner build --delete-conflicting-outputs
///
/// 基本的に状態を追加していくのは
/// const factory XxxPageState({
///    ここに記述します
/// }) = _XxxPageState;
