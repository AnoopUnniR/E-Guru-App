part of 'profile_page_bloc.dart';

abstract class ProfilePageState  {
  const ProfilePageState();

 }

class ProfilePageInitial extends ProfilePageState {}

class ProfilePageStudentUpdate extends ProfilePageState {
  final bool isSubmit;

  const ProfilePageStudentUpdate({required this.isSubmit});
}
