// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'seach_bloc.dart';

@immutable
abstract class SeachEvent extends Equatable {}

class OnSearchEvent extends SeachEvent {
  String input;
  OnSearchEvent({
    required this.input,
  });
  @override
  List<Object?> get props => [input];
}
