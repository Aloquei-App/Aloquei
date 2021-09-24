import 'package:flutter/material.dart';

void navigateToExplore(BuildContext context) {
  Navigator.of(context).pushNamed('/explore');
}

void navigateToWishlists(BuildContext context) {
  Navigator.of(context).pushNamed('/wishlists');
}

void navigateToTrips(BuildContext context) {
  Navigator.of(context).pushNamed('/trips');
}

void navigateToInbox(BuildContext context) {
  Navigator.of(context).pushNamed('/inbox');
}

void navigateToProfile(BuildContext context) {
  Navigator.of(context).pushNamed('/profile');
}
