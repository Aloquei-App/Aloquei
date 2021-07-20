import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EuropeanWarningCard extends StatelessWidget {
  const EuropeanWarningCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
          color: Colors.cyan[50]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                FontAwesomeIcons.globe,
                color: Colors.black,
                size: 20,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Flexible(
              child: Text(
                "Se o seu país de residência ou estabelecimento estiver dentro do Espaço Econômico Europeu (EEE), Suíça ou Reino Unido, os Termos de Serviço de Pagamentos para Usuários Europeus se aplicam a você. Se o seu país de residência ou estabelecimento for fora do EEE, Suíça e Reino Unido, os Termos de Serviço de Pagamentos para Usuários Não Europeus se aplicam a você.",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
