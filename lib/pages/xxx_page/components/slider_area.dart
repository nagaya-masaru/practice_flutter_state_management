import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_shunichi_prj/states/xxx_page_state/xxx_page_state.dart';
import 'package:to_shunichi_prj/view_models/xxx_page_view_model/xxx_page_view_model.dart';

class SliderArea extends StatelessWidget {
  const SliderArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// 以下のように変数はキャメルケースで宣言します
    ///
    /// リアルタイムで監視したい値は
    /// context.watch<ビューモデルにくっついているStateの型（()が無いパターン）>().状態名;
    /// でリアルタイムの変更監視できます
    final musicVolume = context.watch<XxxPageState>().musicVolume;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('現在の音量は${musicVolume.toStringAsFixed(1)}です'),
        Slider(
          value: musicVolume,
          onChanged: (newVolume) {
            /// ViewModelにある関数は
            /// context.read<ビューモデルの型（()が無いパターン）>().関数名();
            /// で呼び出すことが出来ます
            context.read<XxxPageViewModel>().updateMusicVolume(newVolume);
          },
          max: 100,
        ),
      ],
    );
  }
}
