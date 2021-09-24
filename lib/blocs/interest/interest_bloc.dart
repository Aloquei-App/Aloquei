import 'package:aloquei_app/blocs/profile/profile_bloc.dart';
import 'package:aloquei_app/core/errors/auth_error.dart';
import 'package:aloquei_app/core/models/interest_offer_model.dart';
import 'package:aloquei_app/resources/offers/firestore_offers.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'interest_event.dart';
part 'interest_state.dart';

class InterestBloc extends Bloc<InterestEvent, InterestState> {
  final InterestModel interestModel;

  InterestBloc({this.interestModel}) : super(InterestInitial());
  final OffersRepository offersRepository = OffersRepository();
  @override
  Stream<InterestState> mapEventToState(InterestEvent event) async* {
    if (event is ScreenStarded) {
      yield LoadingState();
    } else if (event is SubmitEvent) {
      yield LoadingState();
      try {
        final inserted = await offersRepository.insertInterest(interestModel);
        if (InterestModel == inserted.runtimeType) {
          yield LoadingState();
          yield SuccessState(message: 'Interesse cadastrado!');
        } else {
          yield LoadingState();
          yield FailState(
              message:
                  'Não foi possível cadastrar seu interesse, entre em contato com o suporte!');
        }
      } catch (e) {
        yield LoadingState();
        yield FailState(message: authErrorHandler(e));
      }
    }
  }
}
