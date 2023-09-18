import 'package:eguru_app/application/admin_page_bloc/addmin_course_catagories/admin_course_category_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_home/admin_home_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/presentation/admin_pages/admin_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_catagory/catagory_model.dart';

class AdminCoursesCatagoryListPage extends StatelessWidget {
  AdminCoursesCatagoryListPage({super.key});
  final TextEditingController catagoyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Categories",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            tooltip: "Add Category",
            icon: const Icon(Icons.add_circle_outline),
            onPressed: () {
              catagoyController.clear();
              showDialog(
                context: context,
                builder: (context) => BlocBuilder<AdminCourseCategoryBloc,
                    AdminCourseCategoryState>(
                  builder: (context, state) {
                    return AlertDialog(
                      title: blText("Enter the new catagory name"),
                      content: TextField(
                        decoration: const InputDecoration(
                          hintText: "category",
                        ),
                        style: const TextStyle(color: Colors.black),
                        cursorColor: Colors.black,
                        controller: catagoyController,
                      ),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              String val = catagoyController.text.trim();
                              if (state.catagoryList
                                  .where((element) => element.name == val)
                                  .isNotEmpty) {
                                showCustomSnackbar(
                                    message:
                                        "The Catagry name \"$val\" already exists.",
                                    context: context);
                                return;
                              }
                              BlocProvider.of<AdminCourseCategoryBloc>(context)
                                  .add(Create(catagoryName: val));
                              Navigator.pop(context);
                            },
                            child: state.isLoading
                                ? const CircularProgressIndicator()
                                : const Text("Add")),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Cancel"),
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
      body: SafeArea(
        child: BlocConsumer<AdminCourseCategoryBloc, AdminCourseCategoryState>(
          listener: (context, state) {
            if (state.isDelete) {
              showCustomSnackbar(
                  message: "Catagory Deleted Successfully", context: context);
              BlocProvider.of<AdminHomeBloc>(context)
                  .add(const AdminHomeEvent.categoryListEvent());
            }
            if (state.isCreated) {
              showCustomSnackbar(
                  message: "Catagory Added Successfully", context: context);
              BlocProvider.of<AdminHomeBloc>(context)
                  .add(const AdminHomeEvent.categoryListEvent());
            }
          },
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            return state.catagoryList.isEmpty
                ? const Center(
                    child: Text(
                      "No categories to show",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: state.catagoryList.length,
                    itemBuilder: (context, index) {
                      CategoryModel catagory = state.catagoryList[index];
                      return CourseCatagoryTile(catagory: catagory);
                    },
                    separatorBuilder: (context, index) => const Divider(
                      height: 8,
                    ),
                  );
          },
        ),
      ),
    );
  }
}

class CourseCatagoryTile extends StatelessWidget {
  const CourseCatagoryTile({
    super.key,
    required this.catagory,
  });

  final CategoryModel catagory;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(catagory.id.toString(),
            style: const TextStyle(color: Colors.black)),
        title: Text(
          catagory.name,
          style: const TextStyle(color: Colors.black),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: blText("Do you wish to delete this course ?"),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<AdminCourseCategoryBloc>(context).add(
                          Delete(
                            catagoryId: catagory.id,
                          ),
                        );
                        Navigator.pop(context);
                      },
                      child: blText("confirm")),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: blText("cancel"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
