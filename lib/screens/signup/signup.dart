import 'package:flutter/material.dart';

import '../core/app_bars/default_app_bar.dart';
import 'components/accept_button.dart';
import 'components/date_input.dart';
import 'components/email_input.dart';
import 'components/name_and_last_name_input.dart';
import 'components/notification_button.dart';
import 'components/password_input.dart';
import 'components/signup_title.dart';
import 'components/text_with_buttons.dart';
import 'components/text_with_notifications.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
          SignupTitle(),
          NameAndLastNameInput(
            lastNameController: null,
            nameController: null,
          ),
          DateInput(
            onChanged: null,
          ),
          EmailInput(
            controller: null,
          ),
          PasswordInput(
            controller: null,
          ),
          TextButtons(),
          AcceptButton(
            onpressed: () {},
          ),
          TextWithNotifications(),
          NotificationButton(
            onPressed: () {},
            status: true,
          )
        ],
      ),
    );
  }
}
