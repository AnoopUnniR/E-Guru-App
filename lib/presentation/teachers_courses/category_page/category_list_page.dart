import 'package:eguru_app/application/course_catagory/course_catagory_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/constants/create_button.dart';
import 'package:eguru_app/constants/page_background_color.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:eguru_app/presentation/teachers_courses/category_page/add_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_catagory/catagory_model.dart';

class CreateCategoryPage extends StatelessWidget {
  const CreateCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    int teacherId = ModalRoute.of(context)?.settings.arguments as int;
    TextEditingController categoryController = TextEditingController();
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                                return Card(
                                  color: Colors.transparent,
                                  child: SizedBox(
                                    height: 60,
                                    child: ListTile(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, addNewCoursePageRoute,
                                            arguments: catagory);
                                      },
                                      leading: sbw10,
                                      title: Text(
                                        catagory.name,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                    },
                  ),
                ),
                CreateButtonWidget(
                  title: "Add New Category",
                  function: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AddNewCatagoryField(
                            bloc: BlocProvider.of<CourseCatagoryBloc>(context),
                            categoryController: categoryController);
                      },
                    );
                  },
                ),
                sbh10
              ],
            ),
          ),
        ),
      ),
    );
  }
}
