import '../../core/models/interest_offer_model.dart';
import 'package:flutter/material.dart';

import '../../core/models/house_offer_model.dart';

void navigateToSearch(BuildContext context, Function func) {
  Navigator.of(context).pushNamed('/search', arguments: func);
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

void navigateToHelp(BuildContext context) {
  Navigator.of(context).pushNamed('/help');
}

void navigateToInterestPage(BuildContext context) {
  Navigator.of(context).pushNamed('/interestPage');
}

void navigateToInterestPet(BuildContext context) {
  Navigator.of(context).pushNamed('/interestPet');
}

void navigateToHostPage(BuildContext context) {
  Navigator.of(context).pushNamed('/hostPage');
}

void navigateToHome(BuildContext context) {
  Navigator.of(context).pushNamed('/home');
}

void navigateToPersonalData(BuildContext context) {
  Navigator.of(context).pushNamed('/personalData');
}

void navigateToTerms(BuildContext context) {
  Navigator.of(context).pushNamed('/termsData');
}

void navigateToHelpPage(BuildContext context) {
  Navigator.of(context).pushNamed('/helpPage');
}

void navigateToOfferDetail(BuildContext context, HouseOfferModel model) {
  Navigator.of(context).pushNamed('/offerDetail', arguments: model);
}

void navigateToInterestDetail(BuildContext context, InterestModel model) {
  Navigator.of(context).pushNamed('/interestDetail', arguments: model);
}
