import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextButtons extends StatelessWidget {
  const TextButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black,
          ),
          children: [
            TextSpan(text: 'Ao selecionar '),
            TextSpan(
              text: 'Concordar e continuar',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ' abaixo,eu concordo com os '),
            TextSpan(
              text: 'Termos de Serviço, ',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      'https://tenor.com/view/kid-thumbs-up-approve-computer-gif-11224142');
                },
              // Termos de Serviço de pagamentos, Política de Privacidade e Política de Não Discriminação
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: ' Termos de Serviço de pagamentos, ',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      'https://tenor.com/view/kid-thumbs-up-approve-computer-gif-11224142');
                },
              // Política de Privacidade e Política de Não Discriminação
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: ' Política de Privacidade ',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      'https://tenor.com/view/kid-thumbs-up-approve-computer-gif-11224142');
                },
              // Termos de Serviço de pagamentos, Política de Privacidade e Política de Não Discriminação
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(text: 'e'),
            TextSpan(
              text: ' Política de Não Discriminação',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      'https://tenor.com/view/kid-thumbs-up-approve-computer-gif-11224142');
                },
              // Termos de Serviço de pagamentos, Política de Privacidade e Política de Não Discriminação
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(text: ', do Aloquei.'),
          ],
        ),
      ),
    );
  }
}
