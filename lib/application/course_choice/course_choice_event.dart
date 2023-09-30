part of 'course_choice_bloc.dart';

@freezed
class CourseChoiceEvent with _$CourseChoiceEvent {
  const factory CourseChoiceEvent.selected({required int selectedItem}) =_Selected;

}