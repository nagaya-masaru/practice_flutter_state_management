import 'dart:async';

import 'package:state_notifier/state_notifier.dart';
import 'package:to_shunichi_prj/states/xxx_page_state/xxx_page_state.dart';

class XxxPageViewModel extends StateNotifier<XxxPageState> {
  XxxPageViewModel() : super(const XxxPageState());

  /// 基本的にstateは以下のように更新していきます
  /// state = state.copyWith(
  ///   stateに定義していて更新したい値の名前: 引数で受け取った値の引数名
  /// );
  ///
  /// 引数は必ず更新したい値と同じ型を定義します
  ///
  /// 関数は以下のように定義します
  ///
  /// void キャメルケースで関数名(引数の型 引数名){
  ///   行いたい処理
  /// }

  void updateName(String name) {
    state = state.copyWith(name: name);
  }

  void updateCount(int count) {
    state = state.copyWith(count: state.count + count);
  }

  void updateIsLoading(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }

  void updateMusicVolume(double musicVolume) {
    state = state.copyWith(musicVolume: musicVolume);
  }

  Future<void> startTimer() async {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      state = state.copyWith(timerCount: timer.tick);
    });
  }
}
