part of 'teacher_registration_bloc.dart';

abstract class TeacherRegistrationState {
  const TeacherRegistrationState();
}

class TeacherRegistrationInitial extends TeacherRegistrationState {}

class TeacherRegistrationLoading extends TeacherRegistrationState {}

class TeacherRegistrationApplied extends TeacherRegistrationState {}

class TeacherRegistrationFailed extends TeacherRegistrationState {}

