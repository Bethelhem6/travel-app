// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:travel_app/models/places.dart';

part 'seach_event.dart';
part 'seach_state.dart';

class SeachBloc extends Bloc<SeachEvent, SeachState> {
  SeachBloc() : super(const SeachInitial(searchResult: [])) {
    on<OnSearchEvent>((event, emit) {
      List<Places> searchResult = state.searchResult;
      String input = event.input;
      String message = state.message;

      searchResult = Places.allPlaces
          .where((element) =>
              element.name.toLowerCase().startsWith(input.toLowerCase()))
          .toList();
      if (searchResult.isNotEmpty) {
        emit(SeachState(searchResult: searchResult));
      } else {
        message = "No food found!";
        emit(SeachState(searchResult: searchResult, message: message));
      }
    });
  }
}
