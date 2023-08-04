import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/nationalize.dart';
import '../data/repositories/nationalize_repo.dart';

part 'nationalize_state.dart';

class NationalizeCubit extends Cubit<NationalizeState> {
  NationalizeCubit(
    this.nationalizeRepo,
  ) : super(NationalizeInitial());

  NationalizeRepo nationalizeRepo;

  static NationalizeCubit get(
    context,
  ) =>
      BlocProvider.of(
        context,
      );

  void emitGetData(
    String name,
  ) {
    nationalizeRepo
        .getData(
      name,
    )
        .then((
      data,
    ) {
      emit(
        GetDataState(
          data,
        ),
      );
    });
  }
}
