import 'package:flutter/material.dart';
import 'package:flutter_portofolio/widgets/project_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ProjectCard(
          title: 'Project 1',
          description: 'Description for Project 1.',
          imageUrl:
              'https://wallpapers.com/images/featured/picture-en3dnh2zi84sgt3t.jpg',
          projectUrl:
              'https://www.canva.com/design/DAFuOhkcVB4/LE4oCUmnQUAhnjGcwkocDQ/view?utm_content=DAFuOhkcVB4&utm_campaign=designshare&utm_medium=link&utm_source=publishsharelink',
        ),
        ProjectCard(
          title: 'Project 2',
          description: 'Description for Project 2.',
          imageUrl:
              'https://static.vecteezy.com/system/resources/thumbnails/025/181/412/small/picture-a-captivating-scene-of-a-tranquil-lake-at-sunset-ai-generative-photo.jpg',
          projectUrl: 'https://github.com/JohanJianta/WordleMania',
        ),
        // Add more ProjectCard widgets as needed
      ],
    );
  }
}
