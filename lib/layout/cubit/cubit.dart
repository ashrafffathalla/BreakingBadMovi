import 'package:bloc/bloc.dart';
import 'package:breaking_bad/layout/cubit/states.dart';
import 'package:breaking_bad/models/all_characters.dart';
import 'package:breaking_bad/shared/network/remote/end_point.dart';
import 'package:breaking_bad/shared/network/remote/dio_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BreakingBadCubit extends Cubit<BreakingBadStates> {
  BreakingBadCubit() : super(NewInitialStates());

  static BreakingBadCubit get(context) => BlocProvider.of(context);

// get all characters method
  CharacterModel? characterModel;
 //List <CharacterModel>? allCharacters = [];
  void getAllCharacters()
  {
    emit(GetAllCharactersLoadingState());
    DioHelper.getData(
      url: Characters,
    ).then((value){

      characterModel = CharacterModel.fromJson(value.data);
      emit(GetAllCharactersSuccessState());
    }).catchError((error)
    {
      print(error.toString());
      emit(GetAllCharactersErrorState());
    });
  }
}