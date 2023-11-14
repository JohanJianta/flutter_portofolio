import 'package:flutter/material.dart';
import 'package:flutter_portofolio/class/project_info.dart';
import 'package:flutter_portofolio/widgets/project_card.dart';

class ProjectSection extends StatefulWidget {
  const ProjectSection({super.key});

  @override
  State<ProjectSection> createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> {
  ProjectInfo projectInfo1 = ProjectInfo(
    title: 'Counter & Navigation App',
    subtitle: 'Aplikasi Counter dan Screen Generator dari Flutter',
    description:
        'Aplikasi ini dikembangkan dengan menggunakan framework Flutter. Fitur utama dari aplikasi ini adalah Counter dan Screen Generator. Fitur Counter memungkinkan pengguna untuk menambah dan menghapus counter sesuka hati. Pengguna juga dapat memperbarui warna dan label dari counter yang dipilih. Untuk fitur Screen Generator, pengguna dapat membuat halaman baru sesuai dengan jumlah yang dimasukkan.',
    imagePath: 'assets/images/counter-app 4x3.png',
    projectUrl:
        'https://github.com/JohanJianta/Flutter_Provider/tree/Assignment-5-Navigation',
  );

  ProjectInfo projectInfo2 = ProjectInfo(
    title: 'WordleMania',
    subtitle:
        'Website game Wordle dari Springboot, MySql, dan Vanilla Javascript',
    description:
        'Website ini dikembangkan dengan menggunakan Vanilla Javascript untuk front-end, framework Springboot Rest API untuk back-end, dan MySQL untuk basis datanya.\n\nWebsite ini memungkinkan 1 - 4 pemain saling terhubung untuk memainkan permainan yang dikenal sebagai Wordle. Pemain dengan skor terbanyak dalam server akan ditampilkan di atas Leaderboard. Pemain juga dapat mengirimkan permintaan pertemanan kepada pemain lainnya, dan bisa mengajak teman tersebut untuk bermain bersama. Selain itu, pemain juga dapat melihat riwayat permainan yang sudah dimainkan sebelumnya.',
    imagePath: 'assets/images/wordlemania 2.png',
    projectUrl: 'https://github.com/JohanJianta/WordleMania',
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProjectCard(projectInfo: projectInfo1),
        ProjectCard(projectInfo: projectInfo2),
      ],
    );
  }
}
