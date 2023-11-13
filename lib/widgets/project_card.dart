import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String projectUrl;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.projectUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            imageUrl,
            height: 200.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(description),
                const SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: () async {
                    // coba buka link proyek
                    if (await canLaunchUrlString(projectUrl)) {
                      await launchUrlString(projectUrl);
                    } else {
                      // tampilkan error apabila tidak berhasil
                      throw 'Could not launch $projectUrl';
                    }
                  },
                  child: const Text('View Project'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
