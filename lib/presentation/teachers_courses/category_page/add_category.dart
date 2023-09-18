
import 'package:eguru_app/application/course_catagory/course_catagory_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/presentation/login_pages/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
