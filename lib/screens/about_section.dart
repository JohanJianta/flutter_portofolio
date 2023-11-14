import 'package:flutter/material.dart';
import 'package:flutter_portofolio/widgets/icon_label_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  // variabel diinisialisasikan di sini biar mudah diubah nantinya
  final phone = '+62895630486298';
  final email = 'johanreinaldojianta@gmail.com';
  final emailSubject = 'Flutter Portofolio Email';
  final emailBody = 'Hello, i like pancakes.';
  final facebook = 'https://www.facebook.com/johan.jianta';
  final urlCV =
      'https://www.canva.com/design/DAFuOhkcVB4/LE4oCUmnQUAhnjGcwkocDQ/view?utm_content=DAFuOhkcVB4&utm_campaign=designshare&utm_medium=link&utm_source=publishsharelink';

  // preset untuk teks header
  Widget _buildTextHeader(String label) {
    return Text(
      label,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  // preset untuk teks sub header
  Widget _buildTextSubHeader(String label) {
    return Text(
      label,
      style: const TextStyle(fontSize: 16),
    );
  }

  @override
  Widget build(BuildContext context) {
    // SingleChildScrollView agar bisa scroll apabila tampilan overflow
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          // tambah constraint biar gak kelewatan besar di web wkwkwk
          constraints: const BoxConstraints(
            maxWidth: 700,
            maxHeight: 500,
          ),
          child: const Image(
            image: AssetImage('assets/images/foto 4x3.jpg'),
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // tampilan seluruh teks dan widget, yup sakit mata ku
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
              const SizedBox(height: 24),
              Center(
                child: ElevatedButton(
                    onPressed: () async {
                      // coba buka link CV
                      if (await canLaunchUrlString(urlCV)) {
                        await launchUrlString(urlCV);
                      } else {
                        // tampilkan error apabila tidak berhasil
                        throw 'Tidak dapat membuka link';
                      }
                    },
                    child: const Text('Lihat CV')),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
