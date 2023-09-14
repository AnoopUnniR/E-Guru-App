import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_teachers_list_page_event.dart';
part 'admin_teachers_list_page_state.dart';
part 'admin_teachers_list_page_bloc.freezed.dart';

class AdminTeachersListPageBloc
    extends Bloc<AdminTeachersListPageEvent, AdminTeachersListPageState> {
  AdminTeachersListPageBloc() : super(AdminTeachersListPageState.initial()) {
    on<_Started>((event, emit) {
      emit(state.copyWith(teacherList: event.teachersList));
    });
  }
}
