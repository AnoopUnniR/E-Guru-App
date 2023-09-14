import 'package:eguru_app/domain/models/user_model/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_students_list_event.dart';
part 'admin_students_list_state.dart';
part 'admin_students_list_bloc.freezed.dart';

class AdminStudentsListBloc
    extends Bloc<AdminStudentsListEvent, AdminStudentsListState> {
  AdminStudentsListBloc() : super(AdminStudentsListState.initial()) {
    on<_Started>((event, emit) {
      emit(state.copyWith(userList: event.userList));
    });
  }
}
