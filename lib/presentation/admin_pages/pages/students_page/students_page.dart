import 'package:eguru_app/application/admin_page_bloc/admin_students_list/admin_students_list_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/user_model/user_model.dart';
import 'package:eguru_app/presentation/admin_pages/pages/constants/admin_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminStudentsListPage extends StatelessWidget {
  const AdminStudentsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: adminAppbar(title: "Students"),
      body: SafeArea(
          child: BlocBuilder<AdminStudentsListBloc, AdminStudentsListState>(
        builder: (context, state) {
          return ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: state.userList.length,
            itemBuilder: (context, index) {
              UserModel user = state.userList[index];
              String date = user.dateJoined
                  .split("T")
                  .first
                  .split("-")
                  .reversed
                  .join("-");
              return Container(
                height: width * 25,
                width: width * 100,
                color: Colors.blueGrey,
                child: Row(
                  children: [
                    sbw10,
                    Container(
                      height: width * 15,
                      width: width * 15,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            imageUrlConvert(user.image!),
                          ),
                        ),
                      ),
                    ),
                    sbw10,
                    SizedBox(
                      width: width * 70,
                      child: Table(
                        columnWidths: const {
                          0: FlexColumnWidth(1),
                          1: FixedColumnWidth(10),
                          2: FlexColumnWidth(5),
                        },
                        children: [
                          TableRow(
                            children: [
                              const Text("Id"),
                              const Text(":"),
                              Text(user.id.toString())
                            ],
                          ),
                          TableRow(
                            children: [
                              const Text("Name"),
                              const Text(":"),
                              Text(user.name)
                            ],
                          ),
                          TableRow(
                            children: [
                              const Text("Email"),
                              const Text(":"),
                              Text(user.email)
                            ],
                          ),
                          TableRow(
                            children: [
                              const Text("Joined on"),
                              const Text(":"),
                              Text(date)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(
              color: Colors.red,
              height: 2,
            ),
          );
        },
      )),
    );
  }
}
