import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class IconLabelButton extends StatelessWidget {
  final String label;
  final String query;
  final IconData icon;

  const IconLabelButton({
    super.key,
    required this.label,
    required this.icon,
    required this.query,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(children: [
        // ClipOval untuk buat border lingkaran
        ClipOval(
          child: Material(
            color: Colors.blue, // icon background color
            child: SizedBox(
                width: 35,
                height: 35,
                child: Icon(
                  icon,
                  color: Colors.white,
                )),
          ),
        ),
        const SizedBox(width: 16),
        Text(
          label,
          style: const TextStyle(fontSize: 16.0),
        ),
      ]),
      // jalankan link query apabila ditekan
      onTap: () => launchUrlString(query),
    );
  }
}
