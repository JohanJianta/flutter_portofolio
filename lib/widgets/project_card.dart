import 'package:flutter/material.dart';
import 'package:flutter_portofolio/class/project_info.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectCard extends StatelessWidget {
  final ProjectInfo projectInfo;

  const ProjectCard({
    super.key,
    required this.projectInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () =>
            Navigator.of(context).pushNamed('/project', arguments: projectInfo),
        child: Card(
          margin: const EdgeInsets.all(16.0),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                projectInfo.imagePath,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      projectInfo.title,
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(projectInfo.subtitle),
                    const SizedBox(height: 8.0),
                    TextButton(
                      onPressed: () async {
                        // coba buka link proyek
                        if (await canLaunchUrlString(projectInfo.projectUrl)) {
                          await launchUrlString(projectInfo.projectUrl);
                        } else {
                          // tampilkan error apabila tidak berhasil
                          throw 'Tidak dapat membuka ${projectInfo.projectUrl}';
                        }
                      },
                      child: const Text('Lihat github'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
