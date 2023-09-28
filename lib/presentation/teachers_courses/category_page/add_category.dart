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
      backgroundColor: const Color.fromARGB(255, 41, 45, 255),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            sbh10,
            const Text(
              "Create a new Category",
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20),
            ),
            sbh20,
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: InputField(
                label: "Enter Category Name",
                controller: categoryController,
              ),
            ),
            sbh20,
            BlocProvider(
              create: (blocContext) => CourseCatagoryBloc(),
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 233, 9, 210))),
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
