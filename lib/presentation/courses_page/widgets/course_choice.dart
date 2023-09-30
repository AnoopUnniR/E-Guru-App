import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/application/course_choice/course_choice_bloc.dart';
import 'package:eguru_app/application/course_page/course_page_bloc.dart';
import 'package:eguru_app/presentation/courses_page/widgets/category_sort_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseSortChoiceChipWidget extends StatelessWidget {
  CourseSortChoiceChipWidget({super.key});
  final List<String> chipItems = [
    'All Courses',
    'Enrolled',
    'Catagories',
    // 'Option 4'
  ];

  @override
  Widget build(BuildContext context) {
    String? selectedChip;

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height / 100;
    return SizedBox(
      height: 50,
      width: width,
      child: BlocProvider(
        create: (context) => CourseChoiceBloc(),
        child: BlocConsumer<CourseChoiceBloc, CourseChoiceState>(
          builder: (context, state) {
            selectedChip = chipItems[state.selectedValue];
            return ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: chipItems.map((String item) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ChoiceChip(
                    backgroundColor: Colors.blueAccent[700],
                    selectedColor: Colors.blue,
                    label: Text(
                      item,
                      style: const TextStyle(),
                    ),
                    selected: selectedChip == item,
                    onSelected: (bool selected) {
                      int selectedValue =
                          chipItems.indexWhere((element) => element == item);
                      BlocProvider.of<CourseChoiceBloc>(context).add(
                        CourseChoiceEvent.selected(selectedItem: selectedValue),
                      );
                      
                      if (chipItems[selectedValue] == "Catagories") {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              CatagorySortWidget(height: height),
                        );
                      }
                    },
                  ),
                );
              }).toList(),
            );
          },
          listener: (context, state) {
            if (chipItems[state.selectedValue] == 'All Courses') {
              BlocProvider.of<CoursePageBloc>(context)
                  .add(const CoursePageEvent.courseEventStarted());
              return;
            }
            if (chipItems[state.selectedValue] == 'Enrolled') {
              BlocProvider.of<CoursePageBloc>(context).add(
                  CoursePageEvent.courseEventEnrolled(userId: savedUserId));
              return;
            }

            // if (selectedChip == 'Catagories') {}
          },
        ),
      ),
    );
  }
}






// class ChoiseChipCourses extends StatefulWidget {
//   const ChoiseChipCourses({super.key});

//   @override
//   ChoiseChipCoursesState createState() => ChoiseChipCoursesState();
// }

// class ChoiseChipCoursesState extends State<ChoiseChipCourses> {
//   List<String> chipItems = [
//     'All Courses',
//     'Enrolled',
//     'Catagories',
//     // 'Option 4'
//   ];
//   String? selectedChip;

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height / 100;
//     return SizedBox(
//       height: 50,
//       width: width,
//       child: ListView(
//         shrinkWrap: true,
//         scrollDirection: Axis.horizontal,
//         children: chipItems.map((String item) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: Material(
//               color: Colors.transparent,
//               child: ChoiceChip(
//                 backgroundColor: Colors.blueAccent[700],
//                 selectedColor: Colors.blue,
//                 label: Text(
//                   item,
//                   style: const TextStyle(),
//                 ),
//                 selected: selectedChip == item,
//                 onSelected: (bool selected) {
//                   setState(() {
//                     selectedChip = selected ? item : chipItems[1];
//                   });
//                   if (selectedChip == 'All Courses') {
//                     BlocProvider.of<CoursePageBloc>(context)
//                         .add(const CoursePageEvent.courseEventStarted());
//                     return;
//                   }
//                   if (selectedChip == 'Enrolled') {
//                     BlocProvider.of<CoursePageBloc>(context).add(
//                         CoursePageEvent.courseEventEnrolled(
//                             userId: savedUserId));
//                     return;
//                   }
//                   if (selectedChip == 'Catagories') {
//                     showDialog(
//                       context: context,
//                       builder: (context) => CatagorySortWidget(height: height),
//                     );
//                   }
//                 },
//               ),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
