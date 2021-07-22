import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/auth/auth_bloc.dart';
import 'core/snack_bar.dart';
import 'explore/explore.dart';
import 'login/login_page.dart';
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
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (contextListener, state) {
          if (state is AuthenticatedState) {
            if (state.user != null) {
              buildSuccesSnackBar(
                  contextListener, "Login realizado com sucesso");
            }
          } else if (state is ExceptionState) {
            buildWarningSnackBar(contextListener, state.message);
          }
        },
        buildWhen: (previous, current) {
          if (current is ExceptionState) {
            return false;
          }
          return true;
        },
        builder: (context, state) {
          if (state is AuthenticatedState) {
            return ExplorePage();
          } else if (state is UnauthenticatedState) {
            return LoginPage();
          } else {
            return Splash();
          }
        },
      ),
    );
  }
}
