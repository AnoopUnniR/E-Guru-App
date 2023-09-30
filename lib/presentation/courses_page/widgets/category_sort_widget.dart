import 'package:eguru_app/application/course_catagory/course_catagory_bloc.dart';
import 'package:eguru_app/application/course_page/course_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_catagory/catagory_model.dart';

class CatagorySortWidget extends StatelessWidget {
  const CatagorySortWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Center(
          child: Text(
        "Catagories",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
      )),
      backgroundColor: Colors.white,
      children: [
        SizedBox(
          height: height * 70, // Provide an appropriate height or use Expanded
          child: BlocBuilder<CourseCatagoryBloc, CourseCatagoryState>(
            builder: (context, state) {
              if (state.isLoading) {
                BlocProvider.of<CourseCatagoryBloc>(context)
                    .add(const CourseAdded());
                return const Center(child: CircularProgressIndicator());
              }
              return state.catagory.isEmpty
                  ? const Center(child: Text("No Categories Created Yet"))
                  : SingleChildScrollView(
                      // Wrap with SingleChildScrollView
                      child: Column(
                        children: List.generate(
                          state.catagory.length,
                          (index) {
                            final CategoryModel category =
                                state.catagory[index];
                            return ListTile(
                              onTap: () {
                                BlocProvider.of<CoursePageBloc>(context).add(
                                    CoursePageEvent.courseEventcatagory(
                                        catagoryId: category.id));
                                Navigator.pop(context);
                              },
                              title: Text(category.name),
                            );
                          },
                        ),
                      ),
                    );
            },
          ),
        )
      ],
    );
  }
}
