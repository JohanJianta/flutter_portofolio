import 'package:flutter/material.dart';
import 'package:flutter_portofolio/class/project_info.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({super.key});

  final ProjectInfo defaultProjectInfo = ProjectInfo(
    imagePath: 'assets/images/no-image-available.png',
    title: 'Judul Proyek',
    subtitle: 'Subtitle Proyek',
    description: 'Deskripsi Proyek',
    projectUrl: 'https://example.com',
  );

  // late menandakan variabel akan diinisialisasikan nanti
  late ProjectInfo projectInfo;

  @override
  Widget build(BuildContext context) {
    try {
      projectInfo = ModalRoute.of(context)!.settings.arguments as ProjectInfo;
    } catch (e) {
      // set projectInfo ke nilai default apabila error
      projectInfo = defaultProjectInfo;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Terjadi kesalahan ketika membuka halaman')));
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Keterangan Proyek')),
      body: SingleChildScrollView(
        child: Column(children: [
          Image(
            image: AssetImage(projectInfo.imagePath),
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  projectInfo.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  projectInfo.description,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () async {
                    // coba buka link proyek
                    if (await canLaunchUrlString(projectInfo.projectUrl)) {
                      await launchUrlString(projectInfo.projectUrl);
                    } else {
                      // tampilkan error apabila tidak berhasil
                      throw 'Tidak dapat membuka ${projectInfo.projectUrl}';
                    }
                  },
                  child: const Text('Lihat di Github'),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
