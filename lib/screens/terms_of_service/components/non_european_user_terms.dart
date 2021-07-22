import 'package:flutter/material.dart';

class NonEuropeanUserTerms extends StatelessWidget {
  const NonEuropeanUserTerms({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Termos de Serviço para Usuários Não Europeus",
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w700,
                fontSize: 28),
          ),
          Text(
            "\nA Seção 23 destes Termos contém um acordo de arbitragem e renúncia à ação coletiva que se aplica a todas as reivindicações contra o Airbnb nos Estados Unidos. Por favor, leia-a atentamente.\n\n",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "Última atualização: 30 de outubro de 2020\n",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            "Obrigado por usar o Airbnb!\n\n",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            "Estes Termos de Serviço (“Termos”) são um contrato legal vinculativo entre você e o Airbnb, que regem o uso dos sites, aplicativos e outras ofertas do Airbnb (coletivamente, a “Plataforma Airbnb”). Quando usados nestes Termos, “Airbnb,” “nós,” “nos,” or “nosso(a)” referem-se à entidade Airbnb estabelecida no Anexo 1 com a qual você está celebrando este contrato.",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            "\nA Plataforma Airbnb oferece um espaço online que permite que os usuários (“Membros”) publiquem, ofereçam, busquem e reservem serviços. Os Membros que publicam e oferecem serviços são chamados de “Anfitriões” e os Membros que buscam, reservam ou usam os serviços são chamados de “Hóspedes.” Os Anfitriões oferecem acomodações (“Acomodações”), atividades, passeios e eventos (“Experiências”), além de uma variedade de viagens e outros serviços (coletivamente, “Serviços de Anfitrião”; cada oferta de Serviço de Anfitrião é um “Anúncio”). Você precisa criar uma conta para acessar e usar muitos recursos da Plataforma Airbnb, devendo manter as informações de sua conta corretas e atualizadas. Como provedor da Plataforma Airbnb, o Airbnb não possui, controla, oferece ou gerencia nenhum Anúncio ou Serviço de Anfitrião. O Airbnb não é parte dos contratos celebrados diretamente entre Anfitriões e Hóspedes, tampouco corretor ou segurador de imóveis. O Airbnb não atua como agente em qualquer capacidade para nenhum Membro, exceto conforme especificado nos Termos de Serviço de Pagamentos (“Termos de Pagamento”). Para saber mais sobre a função do Airbnb, consulte a Seção 16.",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            "\nNós mantemos outros termos e políticas que complementam estes Termos, como nossa Política de Privacidade, que descreve como coletamos e usamos dados pessoais, e nossos Termos de Pagamento, que regem todos os serviços de pagamento fornecidos aos Membros pelas entidades de pagamento do Airbnb ('Airbnb Payments').",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            "\nSe você é um Anfitrião, é responsável por entender e cumprir todas as leis, regras, regulamentos e contratos com terceiros que se aplicam aos seus Serviços de Anfitrião.",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
