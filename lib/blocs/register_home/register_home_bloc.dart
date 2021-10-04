import '../profile/profile_bloc.dart';
import '../../core/errors/auth_error.dart';
import '../../core/models/house_offer_model.dart';
import '../../resources/offers/firestore_offers.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'register_home_event.dart';
part 'register_home_state.dart';

class RegisterHomeBloc extends Bloc<RegisterHomeEvent, RegisterHomeState> {
  HouseOfferModel offerModel;

  setHouseType(int houseType) {
    offerModel.houseType = houseType;
  }

  RegisterHomeBloc({this.offerModel}) : super(RegisterHomeInitial());
  final OffersRepository offersRepository = OffersRepository();
  @override
  Stream<RegisterHomeState> mapEventToState(RegisterHomeEvent event) async* {
    if (event is ScreenStarted) {
      yield LoadingState();
      yield ShowScreen();
    } else if (event is SubmitEvent) {
      yield LoadingState();
      yield ShowScreen();
      try {
        final inserted = await offersRepository.insertHouse(offerModel);
        if (HouseOfferModel == inserted.runtimeType) {
          yield LoadingState();
          yield SuccessState(message: 'Moradia cadastrada!');
        } else {
          yield LoadingState();
          yield FailState(
              message:
                  'Não foi possível cadastrar sua moradia, entre em contato com o suporte!');
        }
      } catch (e) {
        yield LoadingState();
        yield FailState(message: authErrorHandler(e));
      }
    }
  }
}
