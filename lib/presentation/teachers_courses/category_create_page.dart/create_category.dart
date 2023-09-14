

import 'package:eguru_app/application/course_catagory/course_catagory_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/presentation/login_pages/widgets/textformfield.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_catagory/catagory_model.dart';


class CreateCategoryPage extends StatelessWidget {
  const CreateCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    int teacherId = ModalRoute.of(context)?.settings.arguments as int;
    TextEditingController categoryController = TextEditingController();
    double width = MediaQuery.of(context).size.width / 100;
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Catagories",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              sbh20,
              const Text("Select the category"),
              sbh30,
              Flexible(
                child: BlocBuilder<CourseCatagoryBloc, CourseCatagoryState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      BlocProvider.of<CourseCatagoryBloc>(context)
                          .add(const CourseAdded());
                      return const Center(child: CircularProgressIndicator());
                    }
                    return state.catagory.isEmpty
                        ? const Center(
                            child: Text("No Catgories Created Yet"),
                          )
                        : ListView.builder(
                            itemCount: state.catagory.length,
                            itemBuilder: (context, index) {
                              final CategoryModel catagory =
                                  state.catagory[index];
                              catagory.teachersId = teacherId;
                              return SizedBox(
                                height: 60,
                                child: ListTile(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, addNewCoursePageRoute,
                                        arguments: catagory);
                                  },
                                  title: Text(catagory.name),
                                ),
                              );
                            },
                          );
                  },
                ),
              ),
              SizedBox(
                width: width * 70,
                child: ElevatedButton(
                  onPressed: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AddNewCatagoryField(
                            bloc: BlocProvider.of<CourseCatagoryBloc>(context),
                            categoryController: categoryController);
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 233, 9, 210),
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  child: const Text("Add new Category"),
                ),
              ),
              sbh10
            ],
          ),
        ),
      ),
    );
  }
}

class AddNewCatagoryField extends StatelessWidget {
  const AddNewCatagoryField(
      {super.key, required this.categoryController, required this.bloc});
  final CourseCatagoryBloc bloc;
  final TextEditingController categoryController;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.blue[900],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            sbh10,
            const Text("Create a new Category"),
            sbh20,
            InputField(
              label: "Enter Category Name",
              controller: categoryController,
            ),
            sbh10,
            BlocProvider(
              create: (blocContext) => CourseCatagoryBloc(),
              child: ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CourseCatagoryBloc>(context)
                      .add(AddNewCourse(categoryController.text.trim()));
                  Navigator.pop(context);
                },
                child: const Text("Add Category"),
              ),
            ),
            sbh10
          ],
        ),
      ),
    );
  }
}
