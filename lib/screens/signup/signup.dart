import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/auth/auth_bloc.dart';
import '../../blocs/signup/signup_bloc.dart';
import '../../core/validations.dart';
import '../core/app_bars/default_app_bar.dart';
import '../core/loading.dart';
import '../core/snack_bar.dart';
import '../core/success.dart';
import 'components/accept_button.dart';
import 'components/email_input.dart';
import 'components/name_and_last_name_input.dart';
import 'components/notification_button.dart';
import 'components/password_input.dart';
import 'components/signup_title.dart';
import 'components/text_with_buttons.dart';
import 'components/text_with_notifications.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocProvider(
      create: (context) => SignupBloc(),
      child: SignupPage(authBloc: authBloc),
    );
  }
}

class SignupPage extends StatefulWidget {
  final AuthBloc authBloc;
  SignupPage({@required this.authBloc});
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nomeCntrlr = TextEditingController();

  final TextEditingController _ultimoNomeCntrlr = TextEditingController();

  final TextEditingController _emailCntrlr = TextEditingController();

  final TextEditingController _passCntrlr = TextEditingController();

  SignupBloc _signupBloc;
  @override
  void dispose() {
    _signupBloc.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _signupBloc = BlocProvider.of<SignupBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: Form(
        key: _formKey,
        child: BlocConsumer<SignupBloc, SignupStateRegister>(
            listener: (contextListener, state) {
          if (state is UserRegisterSuccessState) {
            Timer(const Duration(seconds: 3), () {
              widget.authBloc.add(SignupSuccessEvent(
                  user: state.user, userModel: state.userModel));
            });
          } else if (state is UserRegisterFailState) {
            buildWarningSnackBar(contextListener, state.message);
          }
        }, builder: (context, state) {
          if (state is SignupLoadingState) {
            return Loading();
          } else if (state is UserRegisterSuccessState) {
            return Success();
          } else {
            return SignupBody(
              nomeCntrlr: _nomeCntrlr,
              emailCntrlr: _emailCntrlr,
              passCntrlr: _passCntrlr,
              signupBloc: _signupBloc,
              formKey: _formKey,
              ultimoNomeCntrlr: _ultimoNomeCntrlr,
            );
          }
        }),
      ),
    );
  }
}

class SignupBody extends StatelessWidget {
  const SignupBody({
    Key key,
    @required TextEditingController ultimoNomeCntrlr,
    @required TextEditingController nomeCntrlr,
    @required TextEditingController emailCntrlr,
    @required TextEditingController passCntrlr,
    @required GlobalKey<FormState> formKey,
    @required SignupBloc signupBloc,
  })  : _ultimoNomeCntrlr = ultimoNomeCntrlr,
        _nomeCntrlr = nomeCntrlr,
        _emailCntrlr = emailCntrlr,
        _passCntrlr = passCntrlr,
        _formKey = formKey,
        _signupBloc = signupBloc,
        super(key: key);

  final TextEditingController _ultimoNomeCntrlr;
  final TextEditingController _nomeCntrlr;
  final TextEditingController _emailCntrlr;
  final TextEditingController _passCntrlr;
  final GlobalKey<FormState> _formKey;
  final SignupBloc _signupBloc;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 25),
      children: [
        SignupTitle(),
        NameAndLastNameInput(
          nameController: _nomeCntrlr,
          lastNameController: _ultimoNomeCntrlr,
        ),
        /* DateInput(
          onChanged: null,
        ),*/
        EmailInput(
          controller: _emailCntrlr,
        ),
        PasswordInput(
          controller: _passCntrlr,
        ),
        TextButtons(),
        AcceptButton(
          onpressed: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
            if (validateAndSave(_formKey)) {
              _signupBloc.add(
                SubmitUserDataEvent(
                  nome: _nomeCntrlr.text.trim(),
                  email: _emailCntrlr.text.trim(),
                  senha: _passCntrlr.text.trim(),
                ),
              );
            }
          },
        ),
        TextWithNotifications(),
        NotificationButton(
          onPressed: () {},
          status: true,
        )
      ],
    );
  }
}
