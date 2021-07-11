import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
  const TextButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        'Ao selecionar Concordar e continuar abaixo, eu concordo com os Tempo de Serviço, Termos de Serviço de pagamentos, Política de Privacidade e Política de Não Discriminação do Aloquei.',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
