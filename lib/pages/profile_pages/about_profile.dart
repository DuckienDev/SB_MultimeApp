import 'package:flutter/material.dart';
import 'package:strong_body_app/widgets/profile_widgets/experience_tile.dart';
import 'package:strong_body_app/widgets/profile_widgets/skill_chip.dart';

class AboutProfile extends StatelessWidget {
  const AboutProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Card(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('About',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                SizedBox(height: 8),
                Text(
                  'I am a dentist with over a decade of experience in oral health. I graduated from Hanoi Medical University and specialize in periodontal treatment, dental implants, and prosthodontics. Skilled in advanced technologies and modern methods, I am committed to high-quality care and patient satisfaction.',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
    
        // Experience Section
        SizedBox(
          width: double.infinity,
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Experience',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(height: 8),
                  ExperienceTile(
                      title: 'Software Developer',
                      company: 'Micro Infotech',
                      duration: 'Jun 2020 - Jun 2021',
                      location: 'Bengaluru, Karnataka, India'),
                  ExperienceTile(
                      title: 'Artificial Intelligence',
                      company: 'Micro Infotech',
                      duration: 'Jun 2020 - Jun 2021',
                      location: 'Bengaluru, Karnataka, India'),
                  ExperienceTile(
                      title: 'Software Developer',
                      company: 'Micro Infotech',
                      duration: 'Jun 2020 - Jun 2021',
                      location: 'Bengaluru, Karnataka, India'),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
    
        // Education Section
        SizedBox(
          width: double.infinity,
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Education',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(height: 8),
                  ExperienceTile(
                      title: 'IIT Delhi',
                      company: 'Computer Engineering – M.Tech',
                      duration: 'Jun 2016 - Jun 2018',
                      location: 'Bengaluru, Karnataka, India'),
                  ExperienceTile(
                      title: 'LJ University',
                      company: 'Computer Engineering – M.Tech',
                      duration: 'Jun 2016 - Jun 2018',
                      location: 'Ahmedabad, Gujarat, India'),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
    
        // Skills Section
        SizedBox(
          width: double.infinity,
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Skills',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      SkillChip(label: 'Java Script'),
                      SkillChip(label: 'Machine Learning'),
                      SkillChip(label: 'Data Science'),
                      SkillChip(label: 'Python'),
                      SkillChip(label: 'Java'),
                      SkillChip(label: 'C++'),
                      SkillChip(label: 'Leadership'),
                      SkillChip(label: 'Problem Solving'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
