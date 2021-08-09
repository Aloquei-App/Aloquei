import 'package:flutter/material.dart';

void navigateToSearch(BuildContext context) {
  Navigator.of(context).pushNamed('/search');
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

void navigateToHome(BuildContext context) {
  Navigator.of(context).pushNamed('/home');
}
