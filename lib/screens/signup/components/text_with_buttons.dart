import 'package:flutter/material.dart';

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
              text:
                  'Termos de Serviço, Termos de Serviço de pagamentos, Política de Privacidade e Política de Não Discriminação ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(text: 'do Aloquei.'),
          ],
        ),
      ),
    );
  }
}
