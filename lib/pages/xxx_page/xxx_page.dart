import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:to_shunichi_prj/pages/xxx_page/components/name_text_field.dart';
import 'package:to_shunichi_prj/pages/xxx_page/components/switch_area.dart';
import 'package:to_shunichi_prj/states/xxx_page_state/xxx_page_state.dart';
import 'package:to_shunichi_prj/view_models/xxx_page_view_model/xxx_page_view_model.dart';

import 'components/counter_area.dart';
import 'components/slider_area.dart';
import 'components/timer_area.dart';

class XxxPage extends StatelessWidget {
  const XxxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// ここでMultiProviderを使用してプロバイダーを使用する宣言をします
    ///
    /// Providerを使用する理由としてはProviderを使用しますと宣言しないと
    ///
    /// Flutter側がどのProviderをどこで使用するかわからずエラーが出ます
    ///
    /// ですので必ず以下のように
    ///
    /// XxxPage と _XxxPage のように親子関係を作りXxxPageでProviderを宣言し
    /// 実際にProviderを使用するのは _XxxPage より下で使用します
    ///
    /// TODO ::: ※ XxxPageで宣言したProviderの値や関数は使用できません
    ///

    return MultiProvider(
      providers: [
        /// Providerの宣言の仕方は以下のようになります
        /// 今回はStateNotifierをViewModelで使用しているので
        /// StateNotifierの場合での宣言の仕方をレクチャーします
        ///
        /// StateNotifierProvider<ビューモデルの型（()が無いパターン）, ビューモデルにくっついているStateの型（()が無いパターン）>(
        ///    create: (_) => ビューモデル（(があるパターン)）,
        /// ),
        StateNotifierProvider<XxxPageViewModel, XxxPageState>(
          create: (_) => XxxPageViewModel(),
        ),
      ],
      child: const _XxxPage(),
    );
  }
}

class _XxxPage extends StatelessWidget {
  const _XxxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const widgets = [
      NameTextField(),
      SwitchArea(),
      CounterArea(),
      SliderArea(),
      TimerArea(),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('XxxPageです'),
      ),
      body: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            final widget = widgets[index];
            return Padding(
              padding: const EdgeInsets.all(16),
              child: widget,
            );
          },
          itemCount: widgets.length,
          separatorBuilder: (_, __) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
        ),
      ),
    );
  }
}
