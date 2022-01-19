import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../core/models/interest_offer_model.dart';
import '../../core/models/user_model.dart';
import '../../resources/offers/firestore_offers.dart';

part 'interest_detail_event.dart';
part 'interest_detail_state.dart';

class InterestDetailBloc
    extends Bloc<InterestDetailEvent, InterestDetailState> {
  final UserModel user;
  InterestDetailBloc({this.user}) : super(InterestDetailInitial());

  OffersRepository _offersRepository = OffersRepository();

  List<InterestModel> _interestDetailList = [];
  List<InterestModel> get getApCasa => _interestDetailList;

  @override
  Stream<InterestDetailState> mapEventToState(
    InterestDetailEvent event,
  ) async* {
    try {
      if (event is InterestDetailStartedEvent) {
        yield LoadingInterestDetailState();
        _interestDetailList =
            await _offersRepository.getInterestByIdPost(user.key);
        yield ShowInterestDetailPageState();
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
