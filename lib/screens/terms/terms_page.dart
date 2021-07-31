import 'package:flutter/material.dart';

import '../core/app_bars/app_bar_with_text.dart';
import 'components/default_pre_text.dart';
import 'components/default_subtitle.dart';
import 'components/default_text.dart';
import 'components/default_title.dart';
import 'components/feedback_text.dart';
import 'components/question_text.dart';
import 'components/yes_no_buttons.dart';

class TermsofServicePage extends StatelessWidget {
  const TermsofServicePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWithText(
        text: 'Termos de Serviço',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            DefaultTitle(
              text: 'Termos de Serviço',
            ),
            DefaultSubtitle(
              text: 'Termos de Serviço Subtítulo',
            ),
            DefaultPreText(text: 'Termos de Serviço Pretexto'),
            DefaultText(
                text:
                    'Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto'),
            QuestionText(),
            YesOrNoButtons(
              onpressedYes: () {},
              onpressedNo: () {},
            ),
            Divider(),
            FeedbackText(onTap: () {})
          ],
        ),
      ),
    );
  }
}
