import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class EuropeanWarningCard extends StatelessWidget {
  const EuropeanWarningCard({
    Key key,
    // final String url = "https://www.airbnb.com.br/help/article/2908/termos-de-servi%C3%A7o?_set_bev_on_new_domain=1626023602_YmNmODdjMjNlZDE5";
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String url = "https://www.airbnb.com.br/help/article/2908/termos-de-servi%C3%A7o?_set_bev_on_new_domain=1626023602_YmNmODdjMjNlZDE5";
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
              child: RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    children: [
                      TextSpan(
                          text:
                              "Se o seu país de residência ou estabelecimento estiver dentro do Espaço Econômico Europeu (EEE), Suíça ou Reino Unido, os "),
                      TextSpan(
                        text:
                            'Termos de Serviço de Pagamentos para Usuários Europeus, ',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch(url);
                          },
                        // Política de Privacidade e Política de Não Discriminação
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text:
                            "se aplicam a você. Se o seu país de residência ou estabelecimento for fora do EEE, Suíça e Reino Unido, os ",
                      ),
                      TextSpan(
                        text:
                            'Termos de Serviço de Pagamentos para Usuários Não Europeus, ',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch(url);
                          },
                        // Política de Privacidade e Política de Não Discriminação
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(text: "se aplicam a você.")
                    ]
                    // text: "Se o seu país de residência ou estabelecimento estiver dentro do Espaço Econômico Europeu (EEE), Suíça ou Reino Unido, os ")
                    // Termos de Serviço de Pagamentos para Usuários Europeus se aplicam a você. Se o seu país de residência ou estabelecimento for fora do EEE, Suíça e Reino Unido, os Termos de Serviço de Pagamentos para Usuários Não Europeus se aplicam a você.",

                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
