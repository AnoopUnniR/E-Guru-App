part of 'teacher_registration_bloc.dart';

abstract class TeacherRegistrationEvent {
  const TeacherRegistrationEvent();


}

class TeachersRegistrationSubmittedEvent extends TeacherRegistrationEvent {
  final TeacherApplyModel teacherApplyModel;

  const TeachersRegistrationSubmittedEvent({required this.teacherApplyModel});
}
 
