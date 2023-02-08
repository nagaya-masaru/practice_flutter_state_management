import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_shunichi_prj/states/xxx_page_state/xxx_page_state.dart';
import 'package:to_shunichi_prj/view_models/xxx_page_view_model/xxx_page_view_model.dart';

class CounterArea extends StatelessWidget {
  const CounterArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// 以下のように変数はキャメルケースで宣言します
    ///
    /// リアルタイムで監視したい値は
    /// context.watch<ビューモデルにくっついているStateの型（()が無いパターン）>().状態名;
    /// でリアルタイムの変更監視できます
    final count = context.watch<XxxPageState>().count;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(count.toString()),
          GestureDetector(
            onTap: () {
              /// ViewModelにある関数は
              /// context.read<ビューモデルの型（()が無いパターン）>().関数名();
              /// で呼び出すことが出来ます
              context.read<XxxPageViewModel>().updateCount(1);
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
