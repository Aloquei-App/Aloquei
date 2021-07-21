import 'package:flutter/material.dart';

import 'components/default_subtitle.dart';
import 'components/default_pre_text.dart';
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
        appBar: AppBar(
          title:
              Text('Termos de Serviço', style: TextStyle(color: Colors.black)),
          elevation: 0.5,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Color(0xFF474747),
              onPressed: () {},
            ),
          ),
        ),
        body: ListView(children: [
          DefaultTitle(
            text: 'Termos de Serviço',
          ),
          DefaultSubtitle(
            text: 'Termos de Serviço Subtitulo',
          ),
          DefaultPreText(text: 'Termos de Serviço Pretexto'),
          DefaultText(
              text:
                  'Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto'),
          QuestionText(),
          YesorNoButtons(
            onpressed: () {},
            onpressed2: () {},
          ),
          Divider(),
          FeedbackText(onTap: () {})
        ]));
  }
}
