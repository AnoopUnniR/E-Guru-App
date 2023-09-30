import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_choice_event.dart';
part 'course_choice_state.dart';
part 'course_choice_bloc.freezed.dart';

class CourseChoiceBloc extends Bloc<CourseChoiceEvent, CourseChoiceState> {
  CourseChoiceBloc() : super(CourseChoiceState.initial()) {
    on<_Selected>((event, emit) {
      emit(state.copyWith(selectedValue: event.selectedItem));
    });
  }
}
