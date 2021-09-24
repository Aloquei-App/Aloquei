import 'package:flutter/material.dart';

import '../core/app_bars/app_bar_with_text.dart';
import 'components/default_pre_text.dart';
import 'components/default_subtitle.dart';
import 'components/default_text.dart';
import 'components/default_title.dart';
import 'components/feedback_text.dart';
import 'components/question_text.dart';
import 'components/yes_no_buttons.dart';

class TermsofServicePage extends StatelessWidget {
  const TermsofServicePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWithText(
        text: 'Termos de Serviço',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            DefaultTitle(
              text: 'Termos de Serviço',
            ),
            DefaultSubtitle(
              text: 'Termos de Serviço para Usuários',
            ),
            DefaultText(
                text:
                    'Estes Termos de Serviço são um contrato legal vinculativo entre você e o Aloquei, que regem o uso dos sites, aplicativos e outras ofertas do Aloquei (coletivamente, a “Plataforma Aloquei”). Quando usados nestes Termos, “Aloquei,” “nós,” “nos,” or “nosso(a)” referem-se à entidade Aloquei estabelecida no Anexo 1 com a qual você está celebrando este contrato.'
                        'A Plataforma Aloquei oferece um espaço online que permite que os usuários (“Membros”) publiquem, ofereçam, busquem e reservem serviços. Os Membros que publicam e oferecem serviços são chamados de “Anfitriões” e os Membros que buscam, reservam ou usam os serviços são chamados de “Hóspedes.” Os Anfitriões oferecem acomodações (“Acomodações”), atividades, passeios e eventos (“Experiências”), além de uma variedade de viagens e outros serviços (coletivamente, “Serviços de Anfitrião”; cada oferta de Serviço de Anfitrião é um “Anúncio”). Você precisa criar uma conta para acessar e usar muitos recursos da Plataforma Aloquei, devendo manter as informações de sua conta corretas e atualizadas. Como provedor da Plataforma Aloquei, o Aloquei não possui, controla, oferece ou gerencia nenhum Anúncio ou Serviço de Anfitrião. O Aloquei não é parte dos contratos celebrados diretamente entre Anfitriões e Hóspedes, tampouco corretor ou segurador de imóveis. O Aloquei não atua como agente em qualquer capacidade para nenhum Membro, exceto conforme especificado nos Termos de Serviço de Pagamentos (“Termos de Pagamento”). Para saber mais sobre a função do Aloquei, consulte a Seção 16.'
                        'Nós mantemos outros termos e políticas que complementam estes Termos, como nossa Política de Privacidade, que descreve como coletamos e usamos dados pessoais, e nossos Termos de Pagamento, que regem todos os serviços de pagamento fornecidos aos Membros pelas entidades de pagamento do Aloquei ("Aloquei Payments").'
                        'Se você é um Anfitrião, é responsável por entender e cumprir todas as leis, regras, regulamentos e contratos com terceiros que se aplicam aos seus Serviços de Anfitrião.'),
            DefaultSubtitle(
              text: 'Termos dos Hóspedes',
            ),
            DefaultPreText(text: '1. Nossa Missão.'),
            DefaultText(
                text:
                'Nossa missão é criar um mundo onde você se sinta em casa em qualquer lugar. De cabanas a castelos e até aulas de culinária, navegue entre milhões de Anúncios e encontre aqueles que melhor se encaixem nas suas preferências de viagem. Confira a descrição e as fotos, o perfil do Anfitrião e as avaliações dos Hóspedes para obter mais informações sobre um Anúncio. Se você tiver dúvidas, basta enviar uma mensagem ao Anfitrião.'),
            DefaultPreText(text: '2. Buscas e Reservas no Aloquei.'),
            DefaultPreText(text: '2.1 Buscas.'),
            DefaultText(
                text:
                'Você pode buscar os Serviços de Anfitrião usando critérios como o tipo de Serviço de Anfitrião, destino de viagem, datas de viagem e número de hóspedes. Você também pode usar filtros para refinar seus resultados de busca. Os resultados de busca são baseados na relevância desses filtros para sua busca e em outros critérios. A relevância leva em consideração fatores como preço, disponibilidade, Avaliações, histórico de atendimento ao cliente e de cancelamentos, popularidade, viagens anteriores e Anúncios salvos, requisitos do Anfitrião (por exemplo, estadia mínima ou máxima) e muitos outros. Saiba mais sobre os resultados de busca em nossa Central de Ajuda.'),
            DefaultPreText(text: '2.2 Reservas.'),
            DefaultText(
                text:
                'Ao reservar um Anúncio, você concorda em pagar todas as taxas relacionadas a sua Reserva, incluindo o preço da diária, taxas aplicáveis (como por exemplo a taxa de serviço do Aloquei, taxas cobradas fora da plataforma, impostos e todos os outros itens descritos no final da Reserva (coletivamente, “Preço Total”). Você também concorda que o Aloquei Payments pode cobrar e recolher qualquer depósito de segurança descrito no final da Reserva. Quando você recebe a confirmação da Reserva, um contrato de Serviços de Anfitrião (chamado ocasionalmente de "Reserva" nestes Termos) é celebrado diretamente entre você e o Anfitrião. A política de cancelamento e todas as outras regras, normas , políticas ou requisitos identificados no Anúncio ou durante a Reserva fazem parte do seu contrato com o Anfitrião. Esteja ciente de que alguns Anfitriões trabalham com um coanfitrião ou com uma equipe para fornecer seus Serviços de Anfitrião.'),
            DefaultPreText(text: '2.3 Reservas de Acomodações.'),
            DefaultText(
                text:
                'A Reserva de uma Acomodação é uma permissão limitada para entrar, ocupar e usar a Acomodação. O Anfitrião mantém o direito de revisitar a Acomodação durante sua estadia, na medida em que seja (i) razoavelmente necessário, (ii) permitido por seu contrato ou acordo com o Anfitrião, e (iii) consistente com a legislação aplicável. Se você permanecer no local após a data de checkout, o Anfitrião tem o direito de requerer a sua saída, de acordo com a legislação local, inclusive impondo penalidades razoáveis pela permanência em excesso. Você não pode exceder o número máximo permitido de Hóspedes.'),
            DefaultPreText(text: '2.4 Reservas de Experiências e outros Serviços de Anfitrião.'),
            DefaultText(
                text:
                'A Reserva de uma Experiência ou de outro Serviço de Anfitrião dá o direito ao usuário de participar, usar ou comparecer a esse Serviço de Anfitrião. Você é responsável por confirmar que você e qualquer um de seus convidados atendem aos requisitos de idade mínima, proficiência e aptidão física, entre outros. Você é responsável por informar ao Anfitrião quaisquer condições médicas, físicas ou outros fatores que possam afetar sua capacidade de participar, usar ou comparecer ao Serviço de Anfitrião. Exceto quando expressamente autorizado, você não pode permitir que outra pessoa participe de um Serviço de Anfitrião, a menos que ela tenha sido incluída como hóspede adicional durante o procedimento de reserva.'),
            DefaultPreText(text: '3. Cancelamentos, Problemas de Viagem, Reembolsos e Modificações de Reserva.'),
            DefaultPreText(text: '3.1 Cancelamentos, Problemas de Viagem e Reembolsos.'),
            DefaultText(
                text:
                'Em regra, se você cancelar uma Reserva como Hóspede, o valor do seu reembolso é determinado pela política de cancelamento aplicável a essa reserva. Contudo, em algumas situações, outras políticas têm prioridade e determinam o valor que será reembolsado a você. Se algo fora de seu controle lhe obriga a cancelar uma Reserva, você pode ser elegível a um reembolso parcial ou integral de acordo com nossa Política de Causas de Força Maior. Se o Anfitrião cancelar ou você tiver um Problema de Viagem (conforme definido em nossa Política de Reembolso do Hóspede), você pode receber ajuda para realizar uma outra Reserva ou com o reembolso parcial ou integral, de acordo com os termos da Política de Reembolso do Hóspede. Diferentes políticas se aplicam a determinadas categorias de Anúncios — por exemplo, as reservas de Experiências são regidas pela Política de Reembolso do Hóspede de Experiências. Consulte cada Política para obter informações sobre o que está coberto e qual reembolso se aplica a cada situação.'),
            DefaultPreText(text: '3.2 Modificações de Reserva.'),
            DefaultText(
                text:
                'Hóspedes e Anfitriões são responsáveis por quaisquer modificações de Reserva que eles concordaram em fazer através da Plataforma Aloquei, ou através do serviço de atendimento ao cliente do Aloquei ("Modificações de Reserva"), e concordam em pagar quaisquer valores, taxas ou impostos adicionais relacionados a qualquer Modificação de Reserva.'),
            DefaultPreText(text: '4. Suas Responsabilidades e Aceitação de Riscos.'),
            DefaultPreText(text: '4.1 Suas Responsabilidades.'),
            DefaultText(
                text:
                'Você é responsável por seus próprios atos e omissões, assim como pelos atos e omissões de qualquer um de seus convidados em qualquer Acomodação, Experiência ou outro Serviço de Anfitrião. Isso significa que você, por exemplo: (i) é responsável por conservar uma Acomodação (e seus bens) na condição em que a encontrou, e (ii) deve agir com integridade, tratar os outros com respeito e cumprir as leis locais o tempo todo. Se você fizer uma Reserva com um hóspede adicional, menor de idade, ou levar um menor a um Serviço de Anfitrião, deve ser legalmente autorizado a agir em seu nome, e será o único responsável por sua supervisão.'),
            DefaultPreText(text: '4.2 Sua Aceitação de Riscos.'),
            DefaultText(
                text:
                'Você reconhece que muitas atividades apresentam riscos inerentes, e concorda que, na medida máxima permitida pela legislação aplicável, você assume todo o risco proveniente de seu acesso e uso da Plataforma Aloquei e de qualquer Conteúdo (conforme definido na Seção 10), incluindo sua estadia em qualquer Acomodação, participação em qualquer Experiência, uso de qualquer outro Serviço de Anfitrião ou qualquer outra interação que você tiver com outros Membros, seja pessoalmente ou online. Isso significa que é sua responsabilidade analisar um Serviço de Anfitrião para determinar se ele é adequado para você. Por exemplo, os Serviços de Anfitrião podem trazer riscos de doença, lesão corporal, deficiência ou morte, e você assume esses riscos de modo livre e voluntário ao optar por participar desses Serviços de Anfitrião.'),

            DefaultSubtitle(
              text: 'Termos dos Anfitriões',
            ),
            DefaultPreText(text: '5. Hospedagem no Aloquei.'),
            DefaultPreText(text: '5.1 Anfitrião.'),
            DefaultText(
                text:
                'Como Anfitrião, o Aloquei lhe oferece a oportunidade de compartilhar sua Acomodação, Experiência ou outro Serviço de Anfitrião com nossa intensa comunidade de Hóspedes — e ganhar dinheiro fazendo isso. É fácil criar um Anúncio e você controla como deseja acomodar, definindo o preço, a disponibilidade e as regras de cada Anúncio.'),
            DefaultPreText(text: '5.2 Contrato com Hóspedes.'),
            DefaultText(
                text:
                'Quando você aceita um pedido de reserva ou recebe uma confirmação de reserva através da Plataforma Aloquei, você está celebrando um contrato diretamente com o Hóspede e é responsável por prestar seu Serviço de Anfitrião de acordo com os termos e preços especificados no seu Anúncio. Você concorda em pagar as taxas aplicáveis, como a taxa de serviço do Aloquei (e os impostos pertinentes) por cada Reserva. O Aloquei Payments deduzirá do seu pagamento os valores devidos, a menos que o Aloquei e você concordem com um método de dedução diferente. Todos os termos, políticas ou condições que você incluir em qualquer contrato adicional com os Hóspedes devem: (i) estar de acordo com estes Termos, nossas Políticas e as informações fornecidas em seu Anúncio, e (ii) ser divulgados de forma evidente na descrição do seu Anúncio.'),
            DefaultPreText(text: '5.3 Independência dos Anfitriões.'),
            DefaultText(
                text:
                'Sua relação com o Aloquei é de um indivíduo ou entidade independente, e não de um funcionário, agente, sócio ou parceiro do Aloquei, exceto o Aloquei Payments que atua como agente de cobrança, conforme descrito nos Termos de Pagamentos. O Aloquei não gerencia nem controla seu Serviço de Anfitrião, e você concorda que tem total autonomia para decidir se e quando fornece os Serviços de Anfitrião, além do preço e condições associados a eles.'),
            DefaultPreText(text: '6. Gerenciamento do seu anúncio.'),
            DefaultPreText(text: '6.1 Criação e gerenciamento do seu anúncio.'),
            DefaultText(
                text:
                'A Plataforma do Aloquei fornece ferramentas que tornam mais fácil você configurar e gerenciar seu Anúncio. Seu Anúncio deve incluir informações completas e precisas sobre seu Serviço de Anfitrião, seu preço, outras cobranças — como taxas de limpeza, taxas de resort, depósitos de segurança, taxas cobradas fora da plataforma — e todas as regras ou requisitos que se aplicam aos seus Hóspedes e Anúncio. Você é responsável por manter as informações (incluindo a disponibilidade do calendário) e o conteúdo (por exemplo, as fotos) do seu Anúncio atualizadas e precisas o tempo todo. Recomendamos que você adquira um seguro adequado para seus Serviços de Anfitrião e leia cuidadosamente os termos e condições da apólice, inclusive os detalhes e exceções à cobertura. Você só pode manter um Anúncio por Acomodação, mas pode ter vários Anúncios para uma única propriedade se nela tiver vários lugares para acomodar. Todas as ofertas de Experiências estão sujeitas aos nossos Termos Adicionais para Anfitriões de Experiências.'),
            DefaultPreText(text: '6.2 Conheça Suas Obrigações Legais.'),
            DefaultText(
                text:
                'Você é responsável por compreender e cumprir todas as leis, regras, regulamentos e contratos com terceiros que se aplicam ao seu Anúncio ou Serviços de Anfitrião. Por exemplo: alguns proprietários, contratos de locação ou normas de associações de proprietários e condomínios restringem ou proíbem sublocações, aluguéis de curta temporada e/ou estadias de longa duração. Algumas cidades têm leis de zoneamento ou outras normas que restringem o aluguel de curta temporada em imóveis residenciais. Algumas jurisdições exigem que os Anfitriões se registrem e/ou obtenham uma autorização ou licença para prestar determinados Serviços de Anfitrião (como aluguéis de curta temporada, estadias de longa duração, preparo de alimentos, venda de bebidas alcoólicas, visitas guiadas ou manuseio de veículos, etc.). Em alguns lugares, os Serviços de Anfitrião que você deseja oferecer podem ser completamente proibidos. Algumas jurisdições exigem que você registre os Hóspedes que ficam em sua Acomodação, outras têm leis que criam direitos de locação para os Hóspedes e geram obrigações adicionais para os Anfitriões. Por exemplo, alguns lugares têm leis que regulam a relação entre proprietário e locatário, e leis de despejo que podem se aplicar a estadias mais longas. Consulte as regras locais para saber quais se aplicam aos Serviços de Anfitrião que você planeja oferecer. Os comunicados que fornecemos sobre os requisitos legais têm fins meramente informativos, e você deve confirmar suas obrigações legais por conta própria. Você é responsável pelo processamento e uso de dados pessoais dos Hóspedes e de outras pessoas em conformidade com as leis de privacidade aplicáveis ​e com estes Termos, incluindo nossos Padrões de Privacidade do Anfitrião. Se você tiver alguma dúvida sobre a aplicação das leis locais, sempre procure um advogado.'),
            DefaultPreText(text: '6.3 Suas Responsabilidades.'),
            DefaultText(
                text:
                'Você é responsável por seus próprios atos e omissões, assim como responsável também pelos atos e omissões de qualquer convidado que participe dos seus Serviços de Anfitrião. Você é responsável por definir seu preço e estabelecer regras e requisitos para seu Anúncio. Você deve descrever todas e quaisquer taxas e cobranças na descrição do seu Anúncio e não pode recolher nenhuma taxa ou cobrança adicional fora da Plataforma Aloquei, exceto aquelas que forem expressamente autorizadas por nossa Política de Taxas Cobradas Fora da Plataforma. Não incentive os Hóspedes a criar contas duplicadas, enviar avaliações, fornecer informações de contato ou realizar outras ações fora da Plataforma Aloquei que violem nossa Política sobre o Uso Fora da Plataforma.'),
            DefaultPreText(text: '6.4 Sua Aceitação de Riscos.'),
            DefaultText(
                text:
                ''),
            DefaultPreText(text: '7 Impostos.'),
            DefaultPreText(text: '7.1 Impostos do anfitrião.'),
            DefaultText(
                text:
                'Como anfitrião, você é responsável por identificar e cumprir suas obrigações previstas na legislação aplicável ​de declarar, recolher, repassar ou incluir em seu preço qualquer IVA aplicável ou outros impostos indiretos, impostos de ocupação, turismo, renda, etc. ("Impostos").'),
            DefaultPreText(text: '7.2 Recolhimento e repasse pelo Aloquei.'),
            DefaultText(
                text:
                'Nas jurisdições em que o Aloquei facilita o recolhimento e/ou repasse de Impostos em nome dos Anfitriões, você instrui e autoriza o Aloquei a recolher Impostos em seu nome e/ou repassar esses Impostos para a autoridade fiscal competente. Todos os Impostos recolhidos e/ou repassados pelo Aloquei são identificados para os Membros em seus registros de transações, conforme aplicável. O Aloquei pode solicitar valores adicionais aos Membros (incluindo a dedução desses valores de pagamentos futuros) caso os Impostos recolhidos e/ou repassados sejam insuficientes para cumprir integralmente as obrigações fiscais desses Membros, e você concorda que a única solução para os Impostos recolhidos pelo Aloquei é um reembolso emitido pela autoridade fiscal aplicável. Você reconhece e concorda que mantemos o direito, com aviso prévio aos Membros afetados, de cessar o recolhimento e repasse de Impostos em qualquer jurisdição por qualquer motivo.'),
            DefaultPreText(text: '7.3 Informações Fiscais.'),
            DefaultText(
                text:
                'Em algumas jurisdições, as leis tributárias podem exigir que recolhamos e/ou repassemos informações fiscais sobre você, retenhamos Impostos em seus pagamentos, ou ambos. Se você não nos fornecer a documentação que determinamos ser suficiente para cumprir qualquer obrigação de reter Impostos em seus pagamentos, poderemos reter os valores exigidos por lei, até recebermos documentação suficiente. Você concorda que o Aloquei pode emitir em seu nome notas fiscais ou documentos parecidos para IVA (Imposto sobre Valor Agregado, GST (Tributo sobre bens e serviços), imposto sobre o consumo ou outros Impostos por seus Serviços de Anfitrião, para que você, nossos Hóspedes e/ou suas organizações possam declarar facilmente os valores corretos dos Impostos.'),


            QuestionText(),
            YesOrNoButtons(
              onpressedYes: () {},
              onpressedNo: () {},
            ),
            Divider(),
            FeedbackText(onTap: () {})
          ],
        ),
      ),
    );
  }
}
