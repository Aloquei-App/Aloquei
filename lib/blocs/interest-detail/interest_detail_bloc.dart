import 'package:aloquei_app/core/models/interest_offer_model.dart';
import 'package:aloquei_app/core/models/user_model.dart';
import 'package:aloquei_app/resources/offers/firestore_offers.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'interest_detail_event.dart';
part 'interest_detail_state.dart';

class InterestDetailBloc extends Bloc<InterestDetailEvent, InterestDetailState> {
  final UserModel user;
  InterestDetailBloc({this.user}) : super(InterestDetailInitial());

  OffersRepository _offersRepository = OffersRepository();

  List<InterestModel> _interestDetailList = [];
  List<InterestModel> get get
}
