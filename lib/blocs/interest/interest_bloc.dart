import '../../core/models/user_model.dart';

import '../profile/profile_bloc.dart';
import '../../core/errors/auth_error.dart';
import '../../core/models/interest_offer_model.dart';
import '../../resources/offers/firestore_offers.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'interest_event.dart';
part 'interest_state.dart';

class InterestBloc extends Bloc<InterestEvent, InterestState> {
  final InterestModel interestModel;
  final UserModel userModel;
  InterestBloc(this.userModel, {this.interestModel}) : super(InterestInitial());
  final OffersRepository offersRepository = OffersRepository();
  @override
  Stream<InterestState> mapEventToState(InterestEvent event) async* {
    if (event is ScreenStarded) {
      yield LoadingState();
    } else if (event is SubmitEvent) {
      yield LoadingState();
      yield ShowScreen();
      try {
        event.interestModel.postUserId = userModel.key;
        event.interestModel.postUserName =
            (userModel.name) + " " + (userModel.lastname);
        final inserted =
            await offersRepository.insertInterest(event.interestModel);
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
