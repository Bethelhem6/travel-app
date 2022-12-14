part of 'seach_bloc.dart';

class SeachState extends Equatable {
  final List<Places> searchResult;
  final String message;

  const SeachState({
    required this.searchResult,
    this.message = "Search here...",
  });

  @override
  List<Object?> get props => [searchResult];
}

class SeachInitial extends SeachState {
  const SeachInitial({required super.searchResult});
}
