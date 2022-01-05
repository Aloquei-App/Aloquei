import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/offer_detail/offer_detail_bloc.dart';
import 'circle_back_Button.dart';
import 'circle_favorite_Button.dart';
import 'circle_share_Button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onSharePressed;

  const CustomAppBar({Key key, this.onSharePressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    OfferDetailBloc _detailBloc = BlocProvider.of<OfferDetailBloc>(context);
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: CircleBackButton(),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: CircleShareButton(onPressed: onSharePressed),
        ),
        BlocBuilder<OfferDetailBloc, OfferDetailState>(
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: CircleFavoriteButton(
                  favState: _detailBloc.favorite,
                  onPressed: () {
                    _detailBloc.add(UpdateFavoriteEvent());
                  }),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
