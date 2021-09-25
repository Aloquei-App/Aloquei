import 'package:aloquei_app/blocs/profile/profile_bloc.dart';
import 'package:aloquei_app/core/errors/auth_error.dart';
import 'package:aloquei_app/core/models/house_offer_model.dart';
import 'package:aloquei_app/core/models/interest_offer_model.dart';
import 'package:aloquei_app/resources/offers/firestore_offers.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'register_home_event.dart';
part 'register_home_state.dart';

class RegisterHomeBloc extends Bloc<RegisterHomeEvent, RegisterHomeState> {
  final InterestModel offerModel;

  RegisterHomeBloc({this.offerModel}) : super(RegisterHomeInitial());
  final OffersRepository offersRepository = OffersRepository();
  @override
  Stream<RegisterHomeState> mapEventToState(RegisterHomeEvent event) async* {
    if (event is ScreenStarded) {
      yield LoadingState();
    } else if (event is SubmitEvent) {
      yield LoadingState();
      try {
        final inserted = await offersRepository.insertInterest(offerModel);
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
