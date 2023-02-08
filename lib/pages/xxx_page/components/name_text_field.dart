import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_shunichi_prj/states/xxx_page_state/xxx_page_state.dart';
import 'package:to_shunichi_prj/view_models/xxx_page_view_model/xxx_page_view_model.dart';

class NameTextField extends StatelessWidget {
  const NameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// 以下のように変数はキャメルケースで宣言します

    const formBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
      ),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            /// リアルタイムで監視したい値は
            /// context.watch<ビューモデルにくっついているStateの型（()が無いパターン）>().状態名;
            /// でリアルタイムの変更監視できます

            'テキストフォームに入力された値↓\n「${context.watch<XxxPageState>().name}」',
          ),
        ),
        TextFormField(
          onChanged: (newValue) {
            /// ViewModelにある関数は
            /// context.read<ビューモデルの型（()が無いパターン）>().関数名();
            /// で呼び出すことが出来ます
            context.read<XxxPageViewModel>().updateName(newValue);
          },
          decoration: const InputDecoration(
            border: InputBorder.none,
            focusedBorder: formBorder,
            enabledBorder: formBorder,
          ),
        ),
      ],
    );
  }
}
