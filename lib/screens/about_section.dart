import 'package:flutter/material.dart';
import 'package:flutter_portofolio/widgets/icon_label_button.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  final phone = '+62895630486298';
  final email = 'johanreinaldojianta@gmail.com';
  final emailSubject = 'Flutter Portofolio Email';
  final emailBody = 'Hello, i like pancakes.';
  final facebook = 'https://www.facebook.com/johan.jianta';

  Widget _buildTextHeader(String label) {
    return Text(
      label,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildTextSubHeader(String label) {
    return Text(
      label,
      style: const TextStyle(fontSize: 16),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const Image(
          image: AssetImage('assets/images/foto 4x3.jpg'),
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextHeader("Johan Reinaldo Jianta"),
              const SizedBox(height: 5),
              _buildTextSubHeader(
                  "Saya seorang mahasiswa Informatika di UC Makassar dengan spesialisasi Full Stack Development. Saya memiliki rasa ingin tahu yang tinggi dan cepat untuk memahami materi baru."),
              const SizedBox(height: 24),
              _buildTextHeader("Minat"),
              const SizedBox(height: 5),
              _buildTextSubHeader('- Back End Coding'),
              const SizedBox(height: 16),
              _buildTextSubHeader('- Game & Mobile Development'),
              const SizedBox(height: 16),
              _buildTextSubHeader('- Tidur'),
              const SizedBox(height: 24),
              _buildTextHeader("Pendidikan"),
              const SizedBox(height: 5),
              _buildTextSubHeader('SMA Kristen Gamaliel Makassar'),
              const SizedBox(height: 5),
              _buildTextSubHeader('2019 - 2022'),
              const SizedBox(height: 16),
              _buildTextSubHeader('Ciputra School of Business Makassar'),
              const SizedBox(height: 5),
              _buildTextSubHeader('2022 - sekarang'),
              const SizedBox(height: 24),
              _buildTextHeader("Kontak"),
              const SizedBox(height: 10),
              IconLabelButton(
                  label: email,
                  icon: Icons.email,
                  query: 'mailto:$email?subject=$emailSubject&body=$emailBody'),
              const SizedBox(height: 16),
              IconLabelButton(
                  label: "+62 895-6304-86298",
                  icon: Icons.call,
                  query: 'tel:$phone'),
              const SizedBox(height: 16),
              IconLabelButton(
                  label: "facebook.com/johan.jianta",
                  icon: Icons.facebook,
                  query: facebook),
            ],
          ),
        ),
      ]),
    );
  }
}
