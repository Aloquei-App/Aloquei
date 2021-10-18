import 'package:aloquei_app/screens/core/navigation.dart';

import '../../blocs/wishlist/wishlist_bloc.dart';
import '../../core/models/user_model.dart';
import '../core/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistPage extends StatelessWidget {
  final UserModel userModel;

  const WishlistPage({Key key, this.userModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          WishlistBloc(user: userModel)..add(WishlistStartedEvent()),
      child: Wishlist(),
    );
  }
}

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  WishlistBloc wishList;

  @override
  void dispose() {
    wishList.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    wishList = BlocProvider.of<WishlistBloc>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, top: 25),
              child: Text(
                'Favoritos',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: BlocBuilder<WishlistBloc, WishlistState>(
                buildWhen: (previous, current) =>
                    current is WishlistState || current is ShowWishlistState,
                builder: (context, state) {
                  if (state is LoadingWishlistState) {
                    return Loading();
                  } else {
                    return ListView.builder(
                      itemCount: wishList.favorites.length,
                      itemBuilder: (context, index) {
                        return ItemWishList(
                            onTap: () {
                              navigateToOfferDetail(
                                context,
                                wishList.favorites[index],
                              );
                            },
                            name: wishList.favorites[index].name,
                            url: wishList.favorites[index].images[0]);
                      },
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemWishList extends StatelessWidget {
  final VoidCallback onTap;
  final String url;
  final String name;

  const ItemWishList({Key key, this.onTap, this.url, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 30, top: 20),
        child: Row(
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(url),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
