import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/auth/auth_bloc.dart';
import 'core/ui.dart';
import 'explore/explore.dart';
import 'login/login_page.dart';
import 'signup/signup.dart';
import 'splash/splash.dart';

class App extends StatelessWidget {
  final Function setUser;
  App({@required this.setUser});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc()..add(AppStartedEvent()),
      child: AppPage(
        setUser: setUser,
      ),
    );
  }
}

class AppPage extends StatefulWidget {
  final Function setUser;

  const AppPage({Key key, @required this.setUser});
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  AuthBloc authBloc;

  @override
  void dispose() {
    authBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (contextListener, state) {
          if (state is AuthenticatedState) {
            if (state.user != null) {
              widget.setUser(state.user, state.userModel);
            }
          } else if (state is ExceptionState) {
            buildSnackBarUi(context, state.message);
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
          if (state is AuthenticatedState) {
            return ExplorePage();
          } else if (state is SignupState) {
            return SignupPage();
          } else if (state is LoginState) {
            return LoginPage(authBloc: authBloc);
          } else if (state is ForgotState) {
            return ExplorePage();
          } else {
            return Splash();
          }
        }),
      ),
    );
  }
}
