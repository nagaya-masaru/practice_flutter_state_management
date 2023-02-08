import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_shunichi_prj/states/xxx_page_state/xxx_page_state.dart';
import 'package:to_shunichi_prj/view_models/xxx_page_view_model/xxx_page_view_model.dart';

class TimerArea extends StatelessWidget {
  const TimerArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// 以下のように変数はキャメルケースで宣言します
    ///
    /// リアルタイムで監視したい値は
    /// context.watch<ビューモデルにくっついているStateの型（()が無いパターン）>().状態名;
    /// でリアルタイムの変更監視できます
    final timerCount = context.watch<XxxPageState>().timerCount;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// 以下のようにif文が使えない場所では
        /// *TODO 「三項演算子」
        /// を使用します
        ///
        /// 使用方法
        /// TODO ::: 条件(bool) ? ここはtrueの場合 : ここはelseの場合
        Text(timerCount != 0 ? timerCount.toString() : 'タイマースタート！'),
        GestureDetector(
          onTap: () async {
            /// ViewModelにある関数は
            /// context.read<ビューモデルの型（()が無いパターン）>().関数名();
            /// で呼び出すことが出来ます
            ///
            /// Future型の関数を使用する場合はasync/awaitを必ず使用する
            await context.read<XxxPageViewModel>().startTimer();
          },
          child: const Icon(Icons.timer),
        ),
      ],
    );
  }
}
