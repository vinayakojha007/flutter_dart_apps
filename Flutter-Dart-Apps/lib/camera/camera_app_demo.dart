import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

class CameraApp extends StatefulWidget {
  final CameraDescription camera;
  const CameraApp({Key? key, required this.camera}) : super(key: key);
  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  @override
  void initState() {
    super.initState();
    _controller = CameraController(widget.camera, ResolutionPreset.medium);
// Step 2: Initialze the Controller
    _initializeControllerFuture = _controller.initialize(); //? Returns a Future
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Take a Photo'),
      ),
// Wait until the controller is initialized before displaying the camera preview.
// Use a FutureBuilder to display a loading spinner until the controller has finished its initalization

      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
// If the future is completed, then display the preview
            return CameraPreview(_controller);
          } else {
// Display the Loading Indicator
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
// Take the Picture
          try {
// Ensure that the camera is initialized
            await _initializeControllerFuture;
//  Take a photo and get the image file location where it has been saved
            final image = await _controller.takePicture();
// If the Photo has been taken then display that Photo on the Screen
            await Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DispayPictureScreen(
// Pass the automatically Generated Path to the DisplayPictureScreen Widget
                  imagePath: image.path),
            ));
          } catch (e) {
// If an exception is raised then log the error to the console
            debugPrint(e.toString());
          }
        },
      ),
    );
  }

//? Dispose the controller when then widget is disposed
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

// Widget to display the photo taken by the user
class DispayPictureScreen extends StatelessWidget {
  final String imagePath;
  const DispayPictureScreen({Key? key, required this.imagePath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Preview'),
      ),
      body: PlatformDetails().isMobile
          ? Image.file(File(imagePath))
          : Image.network(imagePath),
    );
  }
}

class PlatformDetails {
  static final PlatformDetails _singleTon = PlatformDetails._internal();
  factory PlatformDetails() {
    return _singleTon;
  }
  PlatformDetails._internal();
  bool get isDesktop =>
      defaultTargetPlatform == TargetPlatform.macOS ||
      defaultTargetPlatform == TargetPlatform.linux ||
      defaultTargetPlatform == TargetPlatform.windows;
  bool get isMobile =>
      defaultTargetPlatform == TargetPlatform.iOS ||
      defaultTargetPlatform == TargetPlatform.android;
}
