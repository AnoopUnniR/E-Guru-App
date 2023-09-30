part of 'course_choice_bloc.dart';

@freezed
class CourseChoiceState with _$CourseChoiceState {
  const factory CourseChoiceState.select({required int selectedValue}) = _Select;

   factory CourseChoiceState.initial() => const CourseChoiceState.select(selectedValue: 0);

}
