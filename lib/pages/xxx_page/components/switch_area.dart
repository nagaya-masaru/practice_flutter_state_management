import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_shunichi_prj/states/xxx_page_state/xxx_page_state.dart';
import 'package:to_shunichi_prj/view_models/xxx_page_view_model/xxx_page_view_model.dart';

class SwitchArea extends StatelessWidget {
  const SwitchArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// 以下のように変数はキャメルケースで宣言します
    ///
    /// リアルタイムで監視したい値は
    /// context.watch<ビューモデルにくっついているStateの型（()が無いパターン）>().状態名;
    /// でリアルタイムの変更監視できます
    final isLoading = context.watch<XxxPageState>().isLoading;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (isLoading)
          const Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('SwitchAreaです'),
            CupertinoSwitch(
                value: isLoading,
                onChanged: (newBoolValue) {
                  /// ViewModelにある関数は
                  /// context.read<ビューモデルの型（()が無いパターン）>().関数名();
                  /// で呼び出すことが出来ます
                  context
                      .read<XxxPageViewModel>()
                      .updateIsLoading(newBoolValue);
                }),
          ],
        ),
      ],
    );
  }
}
