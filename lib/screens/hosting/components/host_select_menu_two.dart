import 'package:aloquei_app/screens/hosting/components/host_title_subtitle_button.dart';
import 'package:flutter/material.dart';

class HostSelectMenuTwo extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuTwo({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          HostTitleSubtitleButton(
              title: 'Rental Unit',
              subtitle:
                  'A rented place within a multi-unit residential building or complex.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Title', subtitle: 'Subtitle', onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Title', subtitle: 'Subtitle', onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Title', subtitle: 'Subtitle', onpressed: () {}),
        ]));
  }
}
