// // // Copyright 2013 The Flutter Authors. All rights reserved.
// // // Use of this source code is governed by a BSD-style license that can be
// // // found in the LICENSE file.

// // // ignore_for_file: public_member_api_docs

// // import 'dart:async';
// // import 'dart:io';

// // import 'package:flutter/foundation.dart';
// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:mime/mime.dart';
// // import 'package:video_player/video_player.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       title: 'Image Picker Demo',
// //       home: MyHomePage(title: 'Image Picker Example'),
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({super.key, this.title});

// //   final String? title;

// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   List<XFile>? _mediaFileList;

// //   void _setImageFileListFromFile(XFile? value) {
// //     print(value!.path);
// //     _mediaFileList = value == null ? null : <XFile>[value];
// //   }

// //   dynamic _pickImageError;
// //   bool isVideo = false;

// //   VideoPlayerController? _controller;
// //   VideoPlayerController? _toBeDisposed;
// //   String? _retrieveDataError;

// //   final ImagePicker _picker = ImagePicker();
// //   final TextEditingController maxWidthController = TextEditingController();
// //   final TextEditingController maxHeightController = TextEditingController();
// //   final TextEditingController qualityController = TextEditingController();

// //   Future<void> _playVideo(XFile? file) async {
// //     if (file != null && mounted) {
// //       await _disposeVideoController();
// //       late VideoPlayerController controller;
// //       if (kIsWeb) {
// //         // TODO(gabrielokura): remove the ignore once the following line can migrate to
// //         // use VideoPlayerController.networkUrl after the issue is resolved.
// //         // https://github.com/flutter/flutter/issues/121927
// //         // ignore: deprecated_member_use
// //         controller = VideoPlayerController.network(file.path);
// //       } else {
// //         controller = VideoPlayerController.file(File(file.path));
// //       }
// //       _controller = controller;
// //       // In web, most browsers won't honor a programmatic call to .play
// //       // if the video has a sound track (and is not muted).
// //       // Mute the video so it auto-plays in web!
// //       // This is not needed if the call to .play is the result of user
// //       // interaction (clicking on a "play" button, for example).
// //       const double volume = kIsWeb ? 0.0 : 1.0;
// //       await controller.setVolume(volume);
// //       await controller.initialize();
// //       await controller.setLooping(true);
// //       await controller.play();
// //       setState(() {});
// //     }
// //   }

// //   Future<void> _onImageButtonPressed(
// //     ImageSource source, {
// //     required BuildContext context,
// //     bool isMultiImage = false,
// //     bool isMedia = false,
// //   }) async {
// //     if (_controller != null) {
// //       await _controller!.setVolume(0.0);
// //     }
// //     if (context.mounted) {
// //       if (isVideo) {
// //         final XFile? file = await _picker.pickVideo(
// //             source: source, maxDuration: const Duration(seconds: 10));
// //         await _playVideo(file);
// //       } else if (isMultiImage) {
// //         await _displayPickImageDialog(context,
// //             (double? maxWidth, double? maxHeight, int? quality) async {
// //           try {
// //             final List<XFile> pickedFileList = isMedia
// //                 ? await _picker.pickMultipleMedia(
// //                     maxWidth: maxWidth,
// //                     maxHeight: maxHeight,
// //                     imageQuality: quality,
// //                   )
// //                 : await _picker.pickMultiImage(
// //                     maxWidth: maxWidth,
// //                     maxHeight: maxHeight,
// //                     imageQuality: quality,
// //                   );
// //             setState(() {
// //               _mediaFileList = pickedFileList;
// //             });
// //           } catch (e) {
// //             setState(() {
// //               _pickImageError = e;
// //             });
// //           }
// //         });
// //       } else if (isMedia) {
// //         await _displayPickImageDialog(context,
// //             (double? maxWidth, double? maxHeight, int? quality) async {
// //           try {
// //             final List<XFile> pickedFileList = <XFile>[];
// //             final XFile? media = await _picker.pickMedia(
// //               maxWidth: maxWidth,
// //               maxHeight: maxHeight,
// //               imageQuality: quality,
// //             );
// //             if (media != null) {
// //               pickedFileList.add(media);
// //               setState(() {
// //                 _mediaFileList = pickedFileList;
// //               });
// //             }
// //           } catch (e) {
// //             setState(() {
// //               _pickImageError = e;
// //             });
// //           }
// //         });
// //       } else {
// //         await _displayPickImageDialog(context,
// //             (double? maxWidth, double? maxHeight, int? quality) async {
// //           print(source);
// //           try {
// //             final XFile? pickedFile = await _picker.pickImage(
// //               source: source,
// //               maxWidth: maxWidth,
// //               maxHeight: maxHeight,
// //               imageQuality: quality,
// //             );
// //             setState(() {
// //               _setImageFileListFromFile(pickedFile);
// //             });
// //           } catch (e) {
// //             setState(() {
// //               _pickImageError = e;
// //             });
// //           }
// //         });
// //       }
// //     }
// //   }

// //   @override
// //   void deactivate() {
// //     if (_controller != null) {
// //       _controller!.setVolume(0.0);
// //       _controller!.pause();
// //     }
// //     super.deactivate();
// //   }

// //   @override
// //   void dispose() {
// //     _disposeVideoController();
// //     maxWidthController.dispose();
// //     maxHeightController.dispose();
// //     qualityController.dispose();
// //     super.dispose();
// //   }

// //   Future<void> _disposeVideoController() async {
// //     if (_toBeDisposed != null) {
// //       await _toBeDisposed!.dispose();
// //     }
// //     _toBeDisposed = _controller;
// //     _controller = null;
// //   }

// //   Widget _previewVideo() {
// //     final Text? retrieveError = _getRetrieveErrorWidget();
// //     if (retrieveError != null) {
// //       return retrieveError;
// //     }
// //     if (_controller == null) {
// //       return const Text(
// //         'You have not yet picked a video',
// //         textAlign: TextAlign.center,
// //       );
// //     }
// //     return Padding(
// //       padding: const EdgeInsets.all(10.0),
// //       child: AspectRatioVideo(_controller),
// //     );
// //   }

// //   Widget _previewImages() {
// //     final Text? retrieveError = _getRetrieveErrorWidget();
// //     if (retrieveError != null) {
// //       return retrieveError;
// //     }
// //     if (_mediaFileList != null) {
// //       return Semantics(
// //         label: 'image_picker_example_picked_images',
// //         child: ListView.builder(
// //           key: UniqueKey(),
// //           itemBuilder: (BuildContext context, int index) {
// //             final String? mime = lookupMimeType(_mediaFileList![index].path);

// //             // Why network for web?
// //             // See https://pub.dev/packages/image_picker_for_web#limitations-on-the-web-platform
// //             return Semantics(
// //               label: 'image_picker_example_picked_image',
// //               child: kIsWeb
// //                   ? Image.network(_mediaFileList![index].path)
// //                   : (mime == null || mime.startsWith('image/')
// //                       ? Image.file(
// //                           File(_mediaFileList![index].path),
// //                           errorBuilder: (BuildContext context, Object error,
// //                               StackTrace? stackTrace) {
// //                             return const Center(
// //                                 child:
// //                                     Text('This image type is not supported'));
// //                           },
// //                         )
// //                       : _buildInlineVideoPlayer(index)),
// //             );
// //           },
// //           itemCount: _mediaFileList!.length,
// //         ),
// //       );
// //     } else if (_pickImageError != null) {
// //       return Text(
// //         'Pick image error: $_pickImageError',
// //         textAlign: TextAlign.center,
// //       );
// //     } else {
// //       return const Text(
// //         'You have not yet picked an image.',
// //         textAlign: TextAlign.center,
// //       );
// //     }
// //   }

// //   Widget _buildInlineVideoPlayer(int index) {
// //     final VideoPlayerController controller =
// //         VideoPlayerController.file(File(_mediaFileList![index].path));
// //     const double volume = kIsWeb ? 0.0 : 1.0;
// //     controller.setVolume(volume);
// //     controller.initialize();
// //     controller.setLooping(true);
// //     controller.play();
// //     return Center(child: AspectRatioVideo(controller));
// //   }

// //   Widget _handlePreview() {
// //     if (isVideo) {
// //       return _previewVideo();
// //     } else {
// //       return _previewImages();
// //     }
// //   }

// //   Future<void> retrieveLostData() async {
// //     final LostDataResponse response = await _picker.retrieveLostData();
// //     if (response.isEmpty) {
// //       return;
// //     }
// //     if (response.file != null) {
// //       if (response.type == RetrieveType.video) {
// //         isVideo = true;
// //         await _playVideo(response.file);
// //       } else {
// //         isVideo = false;
// //         setState(() {
// //           if (response.files == null) {
// //             _setImageFileListFromFile(response.file);
// //           } else {
// //             _mediaFileList = response.files;
// //           }
// //         });
// //       }
// //     } else {
// //       _retrieveDataError = response.exception!.code;
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(widget.title!),
// //       ),
// //       body: Center(
// //         child: !kIsWeb && defaultTargetPlatform == TargetPlatform.android
// //             ? FutureBuilder<void>(
// //                 future: retrieveLostData(),
// //                 builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
// //                   switch (snapshot.connectionState) {
// //                     case ConnectionState.none:
// //                     case ConnectionState.waiting:
// //                       return const Text(
// //                         'You have not yet picked an image.',
// //                         textAlign: TextAlign.center,
// //                       );
// //                     case ConnectionState.done:
// //                       return _handlePreview();
// //                     case ConnectionState.active:
// //                       if (snapshot.hasError) {
// //                         return Text(
// //                           'Pick image/video error: ${snapshot.error}}',
// //                           textAlign: TextAlign.center,
// //                         );
// //                       } else {
// //                         return const Text(
// //                           'You have not yet picked an image.',
// //                           textAlign: TextAlign.center,
// //                         );
// //                       }
// //                   }
// //                 },
// //               )
// //             : _handlePreview(),
// //       ),
// //       floatingActionButton: Column(
// //         mainAxisAlignment: MainAxisAlignment.end,
// //         children: <Widget>[
// //           Semantics(
// //             label: 'image_picker_example_from_gallery',
// //             child: FloatingActionButton(
// //               onPressed: () {
// //                 isVideo = false;
// //                 _onImageButtonPressed(ImageSource.gallery, context: context);
// //               },
// //               heroTag: 'image0',
// //               tooltip: 'Pick Image from gallery',
// //               child: const Icon(Icons.photo),
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.only(top: 16.0),
// //             child: FloatingActionButton(
// //               onPressed: () {
// //                 isVideo = false;
// //                 _onImageButtonPressed(
// //                   ImageSource.gallery,
// //                   context: context,
// //                   isMultiImage: true,
// //                   isMedia: true,
// //                 );
// //               },
// //               heroTag: 'multipleMedia',
// //               tooltip: 'Pick Multiple Media from gallery',
// //               child: const Icon(Icons.photo_library),
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.only(top: 16.0),
// //             child: FloatingActionButton(
// //               onPressed: () {
// //                 isVideo = false;
// //                 _onImageButtonPressed(
// //                   ImageSource.gallery,
// //                   context: context,
// //                   isMedia: true,
// //                 );
// //               },
// //               heroTag: 'media',
// //               tooltip: 'Pick Single Media from gallery',
// //               child: const Icon(Icons.photo_library),
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.only(top: 16.0),
// //             child: FloatingActionButton(
// //               onPressed: () {
// //                 isVideo = false;
// //                 _onImageButtonPressed(
// //                   ImageSource.gallery,
// //                   context: context,
// //                   isMultiImage: true,
// //                 );
// //               },
// //               heroTag: 'image1',
// //               tooltip: 'Pick Multiple Image from gallery',
// //               child: const Icon(Icons.photo_library),
// //             ),
// //           ),
// //           if (_picker.supportsImageSource(ImageSource.camera))
// //             Padding(
// //               padding: const EdgeInsets.only(top: 16.0),
// //               child: FloatingActionButton(
// //                 onPressed: () {
// //                   isVideo = false;
// //                   _onImageButtonPressed(ImageSource.camera, context: context);
// //                 },
// //                 heroTag: 'image2',
// //                 tooltip: 'Take a Photo',
// //                 child: const Icon(Icons.camera_alt),
// //               ),
// //             ),
// //           Padding(
// //             padding: const EdgeInsets.only(top: 16.0),
// //             child: FloatingActionButton(
// //               backgroundColor: Colors.red,
// //               onPressed: () {
// //                 isVideo = true;
// //                 _onImageButtonPressed(ImageSource.gallery, context: context);
// //               },
// //               heroTag: 'video0',
// //               tooltip: 'Pick Video from gallery',
// //               child: const Icon(Icons.video_library),
// //             ),
// //           ),
// //           if (_picker.supportsImageSource(ImageSource.camera))
// //             Padding(
// //               padding: const EdgeInsets.only(top: 16.0),
// //               child: FloatingActionButton(
// //                 backgroundColor: Colors.red,
// //                 onPressed: () {
// //                   isVideo = true;
// //                   _onImageButtonPressed(ImageSource.camera, context: context);
// //                 },
// //                 heroTag: 'video1',
// //                 tooltip: 'Take a Video',
// //                 child: const Icon(Icons.videocam),
// //               ),
// //             ),
// //         ],
// //       ),
// //     );
// //   }

// //   Text? _getRetrieveErrorWidget() {
// //     if (_retrieveDataError != null) {
// //       final Text result = Text(_retrieveDataError!);
// //       _retrieveDataError = null;
// //       return result;
// //     }
// //     return null;
// //   }

// //   Future<void> _displayPickImageDialog(
// //       BuildContext context, OnPickImageCallback onPick) async {
// //     return showDialog(
// //         context: context,
// //         builder: (BuildContext context) {
// //           return AlertDialog(
// //             title: const Text('Add optional parameters'),
// //             content: Column(
// //               mainAxisSize: MainAxisSize.min,
// //               children: <Widget>[
// //                 TextField(
// //                   controller: maxWidthController,
// //                   keyboardType:
// //                       const TextInputType.numberWithOptions(decimal: true),
// //                   decoration: const InputDecoration(
// //                       hintText: 'Enter maxWidth if desired'),
// //                 ),
// //                 TextField(
// //                   controller: maxHeightController,
// //                   keyboardType:
// //                       const TextInputType.numberWithOptions(decimal: true),
// //                   decoration: const InputDecoration(
// //                       hintText: 'Enter maxHeight if desired'),
// //                 ),
// //                 TextField(
// //                   controller: qualityController,
// //                   keyboardType: TextInputType.number,
// //                   decoration: const InputDecoration(
// //                       hintText: 'Enter quality if desired'),
// //                 ),
// //               ],
// //             ),
// //             actions: <Widget>[
// //               TextButton(
// //                 child: const Text('CANCEL'),
// //                 onPressed: () {
// //                   Navigator.of(context).pop();
// //                 },
// //               ),
// //               TextButton(
// //                   child: const Text('PICK'),
// //                   onPressed: () {
// //                     final double? width = maxWidthController.text.isNotEmpty
// //                         ? double.parse(maxWidthController.text)
// //                         : null;
// //                     final double? height = maxHeightController.text.isNotEmpty
// //                         ? double.parse(maxHeightController.text)
// //                         : null;
// //                     final int? quality = qualityController.text.isNotEmpty
// //                         ? int.parse(qualityController.text)
// //                         : null;
// //                     onPick(width, height, quality);
// //                     Navigator.of(context).pop();
// //                   }),
// //             ],
// //           );
// //         });
// //   }
// // }

// // typedef OnPickImageCallback = void Function(
// //     double? maxWidth, double? maxHeight, int? quality);

// // class AspectRatioVideo extends StatefulWidget {
// //   const AspectRatioVideo(this.controller, {super.key});

// //   final VideoPlayerController? controller;

// //   @override
// //   AspectRatioVideoState createState() => AspectRatioVideoState();
// // }

// // class AspectRatioVideoState extends State<AspectRatioVideo> {
// //   VideoPlayerController? get controller => widget.controller;
// //   bool initialized = false;

// //   void _onVideoControllerUpdate() {
// //     if (!mounted) {
// //       return;
// //     }
// //     if (initialized != controller!.value.isInitialized) {
// //       initialized = controller!.value.isInitialized;
// //       setState(() {});
// //     }
// //   }

// //   @override
// //   void initState() {
// //     super.initState();
// //     controller!.addListener(_onVideoControllerUpdate);
// //   }

// //   @override
// //   void dispose() {
// //     controller!.removeListener(_onVideoControllerUpdate);
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     if (initialized) {
// //       return Center(
// //         child: AspectRatio(
// //           aspectRatio: controller!.value.aspectRatio,
// //           child: VideoPlayer(controller!),
// //         ),
// //       );
// //     } else {
// //       return Container();
// //     }
// //   }
// // }






// import 'dart:io';

// import 'package:dotted_border/dotted_border.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//           highlightColor: const Color(0xFFD0996F),
//           canvasColor: const Color(0xFFFDF5EC),
//           textTheme: TextTheme(
//             headlineSmall: ThemeData.light()
//                 .textTheme
//                 .headlineSmall!
//                 .copyWith(color: const Color(0xFFBC764A)),
//           ),
//           iconTheme: IconThemeData(
//             color: Colors.grey[600],
//           ),
//           appBarTheme: const AppBarTheme(
//             backgroundColor: Color(0xFFBC764A),
//             centerTitle: false,
//             foregroundColor: Colors.white,
//             actionsIconTheme: IconThemeData(color: Colors.white),
//           ),
//           elevatedButtonTheme: ElevatedButtonThemeData(
//             style: ButtonStyle(
//               backgroundColor: MaterialStateColor.resolveWith(
//                   (states) => const Color(0xFFBC764A)),
//             ),
//           ),
//           outlinedButtonTheme: OutlinedButtonThemeData(
//             style: ButtonStyle(
//               foregroundColor: MaterialStateColor.resolveWith(
//                 (states) => const Color(0xFFBC764A),
//               ),
//               side: MaterialStateBorderSide.resolveWith(
//                   (states) => const BorderSide(color: Color(0xFFBC764A))),
//             ),
//           ),
//           colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
//               .copyWith(background: const Color(0xFFFDF5EC))),
//       home: const HomePage(title: 'Image Cropper Demo'),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   final String title;

//   const HomePage({
//     Key? key,
//     required this.title,
//   }) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   XFile? _pickedFile;
//   CroppedFile? _croppedFile;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: !kIsWeb ? AppBar(title: Text(widget.title)) : null,
//       body: Column(
//         mainAxisSize: MainAxisSize.max,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           if (kIsWeb)
//             Padding(
//               padding: const EdgeInsets.all(kIsWeb ? 24.0 : 16.0),
//               child: Text(
//                 widget.title,
//                 style: Theme.of(context)
//                     .textTheme
//                     .displayMedium!
//                     .copyWith(color: Theme.of(context).highlightColor),
//               ),
//             ),
//           Expanded(child: _body()),
//         ],
//       ),
//     );
//   }

//   Widget _body() {
//     if (_croppedFile != null || _pickedFile != null) {
//       return _imageCard();
//     } else {
//       return _uploaderCard();
//     }
//   }

//   Widget _imageCard() {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//             padding:
//                 const EdgeInsets.symmetric(horizontal: kIsWeb ? 24.0 : 16.0),
//             child: Card(
//               elevation: 4.0,
//               child: Padding(
//                 padding: const EdgeInsets.all(kIsWeb ? 24.0 : 16.0),
//                 child: _image(),
//               ),
//             ),
//           ),
//           const SizedBox(height: 24.0),
//           _menu(),
//         ],
//       ),
//     );
//   }

//   Widget _image() {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     if (_croppedFile != null) {
//       final path = _croppedFile!.path;
//       return ConstrainedBox(
//         constraints: BoxConstraints(
//           maxWidth: 0.8 * screenWidth,
//           maxHeight: 0.7 * screenHeight,
//         ),
//         child: kIsWeb ? Image.network(path) : Image.file(File(path)),
//       );
//     } else if (_pickedFile != null) {
//       final path = _pickedFile!.path;
//       return ConstrainedBox(
//         constraints: BoxConstraints(
//           maxWidth: 0.8 * screenWidth,
//           maxHeight: 0.7 * screenHeight,
//         ),
//         child: kIsWeb ? Image.network(path) : Image.file(File(path)),
//       );
//     } else {
//       return const SizedBox.shrink();
//     }
//   }

//   Widget _menu() {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         FloatingActionButton(
//           onPressed: () {
//             _clear();
//           },
//           backgroundColor: Colors.redAccent,
//           tooltip: 'Delete',
//           child: const Icon(Icons.delete),
//         ),
//         if (_croppedFile == null)
//           Padding(
//             padding: const EdgeInsets.only(left: 32.0),
//             child: FloatingActionButton(
//               onPressed: () {
//                 _cropImage();
//               },
//               backgroundColor: const Color(0xFFBC764A),
//               tooltip: 'Crop',
//               child: const Icon(Icons.crop),
//             ),
//           )
//       ],
//     );
//   }

//   Widget _uploaderCard() {
//     return Center(
//       child: Card(
//         elevation: 4.0,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16.0),
//         ),
//         child: SizedBox(
//           width: kIsWeb ? 380.0 : 320.0,
//           height: 300.0,
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: DottedBorder(
//                     radius: const Radius.circular(12.0),
//                     borderType: BorderType.RRect,
//                     dashPattern: const [8, 4],
//                     color: Theme.of(context).highlightColor.withOpacity(0.4),
//                     child: Center(
//                       child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.image,
//                             color: Theme.of(context).highlightColor,
//                             size: 80.0,
//                           ),
//                           const SizedBox(height: 24.0),
//                           Text(
//                             'Upload an image to start',
//                             style: kIsWeb
//                                 ? Theme.of(context)
//                                     .textTheme
//                                     .headlineSmall!
//                                     .copyWith(
//                                         color: Theme.of(context).highlightColor)
//                                 : Theme.of(context)
//                                     .textTheme
//                                     .bodyMedium!
//                                     .copyWith(
//                                         color:
//                                             Theme.of(context).highlightColor),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 24.0),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     _uploadImage();
//                   },
//                   child: const Text('Upload'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _cropImage() async {
//     if (_pickedFile != null) {
//       final croppedFile = await ImageCropper().cropImage(
//         sourcePath: _pickedFile!.path,
//         compressFormat: ImageCompressFormat.jpg,
//         compressQuality: 100,
//         uiSettings: [
//           AndroidUiSettings(
//               toolbarTitle: 'Cropper',
//               toolbarColor: Colors.deepOrange,
//               toolbarWidgetColor: Colors.white,
//               initAspectRatio: CropAspectRatioPreset.original,
//               lockAspectRatio: false),
//           IOSUiSettings(
//             title: 'Cropper',
//           ),
//           WebUiSettings(
//             context: context,
//             presentStyle: CropperPresentStyle.dialog,
//             boundary: const CroppieBoundary(
//               width: 520,
//               height: 520,
//             ),
//             viewPort:
//                 const CroppieViewPort(width: 480, height: 480, type: 'circle'),
//             enableExif: true,
//             enableZoom: true,
//             showZoomer: true,
//           ),
//         ],
//       );
//       if (croppedFile != null) {
//         setState(() {
//           _croppedFile = croppedFile;
//         });
//       }
//     }
//   }

//   Future<void> _uploadImage() async {
//     final pickedFile =
//         await ImagePicker().pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       setState(() {
//         _pickedFile = pickedFile;
//       });
//     }
//   }

//   void _clear() {
//     setState(() {
//       _pickedFile = null;
//       _croppedFile = null;
//     });
//   }
// }