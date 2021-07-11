import 'package:flutter/material.dart';

class TextWithNotifications extends StatelessWidget {
  const TextWithNotifications({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        'O aloquei enviará notificações push,ideias inspiradoras,emails promocionais e ofertas exclusivas para membros.Você pode cancelar o recebimento dessas mensagens quando quiser ao acessar as configurações da sua conta ou diretamente nas notificações promocionais.',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
