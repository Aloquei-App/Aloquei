import 'package:aloquei_app/blocs/auth/auth_bloc.dart';
import 'package:aloquei_app/screens/terms_of_service/components/app_bar_tos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TermsOfService extends StatelessWidget{
  final AuthBloc authBloc;
  const TermsOfService({Key key, @required this.authBloc}) : super(key : key);
  
  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TOAAppBar(),
    );
  }
}