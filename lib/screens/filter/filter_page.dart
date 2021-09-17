import 'components/app_bar_content.dart';
import 'components/filter_appbar.dart';
import 'components/filter_checkbox.dart';
import 'components/filter_checkbox_text.dart';
import 'components/filter_counter_container.dart';
import 'components/filter_slider.dart';
import 'components/filter_title.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        color: Colors.grey[50],
        child: AppBarContent(onpressed1: () {}, onpressed2: () {}),
      ),
      body: ListView(
        children: [
          FilterAppBar(onpressed: () {
            Navigator.pop(context);
          }),
          FilterTitle(titleText: 'Tipo de lugar'),
          FilterCheckBoxText(
              checkBoxTitle: 'Espaço Inteiro',
              checkBoxSubTitle: 'Tenha um lugar só para você'),
          FilterCheckBoxText(
            checkBoxTitle: 'Quarto inteiro',
            checkBoxSubTitle:
                'Tenha seu próprio quarto e compartilhe alguns espaços comuns',
          ),
          FilterCheckBoxText(
            checkBoxTitle: 'Quarto de hotel',
            checkBoxSubTitle:
                'Fique em um quarto inteiro ou compartilhado em um hotel boutique, albergue e outros lugares',
          ),
          FilterCheckBoxText(
            checkBoxTitle: 'Quarto compartilhado',
            checkBoxSubTitle:
                'Fique em um espaço compartilhado, como um quarto comum',
          ),
          FilterTitle(
            titleText: 'Faixa de Preço',
          ),
          FilterSlider(),
          FilterTitle(titleText: 'Quartos e camas'),
          FilterCC(
            text: 'Camas',
          ),
          FilterCC(
            text: 'Quartos',
          ),
          FilterCC(
            text: 'Banheiros',
          ),
          FilterTitle(titleText: 'Comodidades'),
          FilterCheckBox(checkBoxTitle: 'Cozinha'),
          FilterCheckBox(checkBoxTitle: 'Aquecimento Central'),
          FilterCheckBox(checkBoxTitle: 'Ar-condicionado'),
          FilterTitle(titleText: 'Instalações'),
          FilterCheckBox(checkBoxTitle: 'Estacionamento incluído'),
          FilterCheckBox(checkBoxTitle: 'Academia'),
          FilterCheckBox(checkBoxTitle: 'Jacuzzi'),
          FilterTitle(titleText: 'Tipo de propriedade'),
          FilterCheckBox(checkBoxTitle: 'Casa'),
          FilterCheckBox(checkBoxTitle: 'Apartamento'),
          FilterCheckBox(checkBoxTitle: 'Pousada'),
          FilterTitle(titleText: 'Acomodações únicas'),
          FilterCheckBox(checkBoxTitle: 'Casa particular (Cuba)'),
          FilterCheckBox(checkBoxTitle: 'Casa-terra'),
          FilterCheckBox(checkBoxTitle: 'Hotel-fazenda'),
          FilterTitle(titleText: 'Regras da casa'),
          FilterCheckBox(checkBoxTitle: 'Permitido animais'),
          FilterCheckBox(checkBoxTitle: 'Permitido fumar'),
          FilterTitle(titleText: 'Idioma do anfitrião'),
          FilterCheckBox(checkBoxTitle: 'Português'),
          FilterCheckBox(checkBoxTitle: 'Inglês'),
          FilterCheckBox(checkBoxTitle: 'Espanhol'),
        ],
      ),
    );
  }
}
