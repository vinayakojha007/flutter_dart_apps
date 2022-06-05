import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/speaker.dart';

class SpeakerDetails extends StatelessWidget {
  static const routeName = '/speakerDetails';

  const SpeakerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Speaker speaker =
        ModalRoute.of(context)!.settings.arguments as Speaker;
    return Scaffold(
        appBar: AppBar(
          title: Text('${speaker.speakerName} Details'),
        ),
        body: ListView(
          children: [
            Card(
                elevation: 20.0,
                child: Column(
                  children: [
                    Center(child: Image.network(speaker.imageUrl)),
                    Center(
                      child: Text(
                        speaker.speakerName,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      speaker.shortDescription,
                      style: TextStyle(
                          fontSize: 20.0, fontStyle: FontStyle.italic),
                    )
                  ],
                ))
          ],
        ));
  }
}
