//base url

///use this url in case of running app using backend in local server
// const String baseUrl = "http://10.0.2.2:8000/";
// const String websocketUrl = "10.0.2.2:8000";
//  const String baseUrl2 = "http://10.0.2.2:8000";

// const String baseUrl = "http://127.0.0.1:8000/";
// const String websocketUrl = "127.0.0.1:8000";

const String baseUrl2 = "https://egurubackend.online";
const String baseUrl = "https://egurubackend.online/";
const String websocketUrl = "egurubackend.online";

//url for CRUD operations
class Url {
//post to login an existing user
  static String loginUrl = "${baseUrl}auth/user/login/";
  //post to create a new user
  static String singUpUrl = "${baseUrl}auth/users/";
  //get
  static String getUserUrl = "${baseUrl}view/user/";
  // post to activate using otp
  static String otpVerificationurl = "${baseUrl}auth/users/activation/";
  //post to resent the verification otp
  static String otpResentUrl = "${baseUrl}auth/users/resend_activation/";
  //post to apply to enrol as a teacher
  static String teacherRegister = "${baseUrl}teacher/register";
  //get teachers details by id

  ///teacher
  static String getTeacherUrl = "${baseUrl}request/teacher/";
  //get all course category
  static String getAllCatagoriesUrl = "${baseUrl}course/category-list";
  //get all courses of a teacher by teacher id
  static String getCoursesByTeachersIdUrl =
      "${baseUrl}course/teacher/course-list/";
  //post add new catgaory
  static String addNewCatagoryUrl = "${baseUrl}course/category-create";

  ///teacher verify
  //post teacher verify
  static String verifyTeacherUrl = "${baseUrl}request/teacher/verify/";
  static String rejectTeacherUrl = "${baseUrl}request/teacher/reject/";

  /// course
  //post add new course
  static String addNewCourseUrl = "${baseUrl}course/course-create";
  //put
  static String editCourseUrl = "${baseUrl}course/course-edit/";
  //post
  static String deleteCourseUrl = "${baseUrl}course/course-delete/";

  //post create new chapter
  static String addNewChapterUrl = "${baseUrl}course/chapter-add";
  //get chapter courses
  static String getChapterCourses = "${baseUrl}course/<courseId>/chapter-list/";
//delete chapter
  static String deleteChapterUrl = "${baseUrl}course/chapter-delete/";

  /// reviews
  //get
  static String getAllReviews = "$baseUrl/course/<courseId>/reviews/";
  // post
  static String postReviews = "$baseUrl/course/<courseId>/reviews/";

  ///----student urls

  //get all Courses
  static String getAllCourses = "${baseUrl}course/course-list";
  //enroll to a course
  static String enrollCourseUrl = "${baseUrl}course/enroll/";
  static String checkEnrollCourseUrl = "${baseUrl}course/enroll/check/";
  static String unEnrollCourseUrl = "${baseUrl}course/unenroll/";
  static String getAllEnrolledCoursesUrl = "${baseUrl}course/enrollment/user/";
  static String getAllCoursesByCategoryUrl =
      "${baseUrl}course/category-wise/list/";
//get search courses
  static String searchCoursesUrl = "${baseUrl}course/search/";

//favorites
  static String getAllFavoritesUrl = "${baseUrl}course/wishlist-list-all/";
  //post add to favorites
  static String addToFavoritesUrl = "${baseUrl}course/wishlist/";
  //delete remove from favorites
  static String removeFavoritesUrl = "${baseUrl}course/wishlist/remove/";

  ///enrollment
  // static String checkCourseEnrolmentUrl = "${baseUrl}course/enroll/check/";

  // chat urls
  //to get all chats by name
  static String getAllChatsByName = "${baseUrl}chat/?room_name=";
}

class AdminUrl {
  //get all teachers
  static String getAllTeachers = "${baseUrl}teacher/get";
  //get all users students
  static String getAllStudents = "${baseUrl}get/users";
  //get requested teachers list
  static String requestedTeacherUrl = "${baseUrl}request/teacher/";
  //post reject request
  static String requestedTeacherRejectUrl = "${baseUrl}request/teacher/reject/";
  static String requestedTeacherVerifyUrl = "${baseUrl}request/teacher/verify/";
  //delete course catagory
  static String deleteCourseCatagoryUrl = "${baseUrl}course/category/delete/";
}
