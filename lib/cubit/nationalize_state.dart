part of 'nationalize_cubit.dart';

@immutable
abstract class NationalizeState {}

class NationalizeInitial extends NationalizeState {}

class GetDataState extends NationalizeState {
  final Nationalize nationalize;

  GetDataState(this.nationalize);
}
