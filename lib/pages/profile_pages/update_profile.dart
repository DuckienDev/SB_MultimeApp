import 'package:flutter/material.dart';
import 'package:strong_body_app/widgets/profile_widgets/button_update_profile.dart';
import 'package:strong_body_app/widgets/profile_widgets/experience_card.dart';
import 'package:strong_body_app/widgets/profile_widgets/language_tile.dart';
import 'package:strong_body_app/widgets/profile_widgets/textfield_update.dart';
import 'package:strong_body_app/widgets/profile_widgets/textfiled_exprience.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  //Laguage level
  String? selectedLanguageLevel;
  final List<String> levels = [
    'Communication Skills',
    'Conversational',
    'Fluent',
    'Native/Bilingual'
  ];

  String? selectedSkill;
  final List<String> skills = [
    'Communication Skills',
    'Empathy and Compassion',
    'Teamwork',
    'Problem-Solving Skills',
    'Time Management',
    'Adaptability',
    'Attention to Detail'
  ];

  // ignore: unused_field
  double _value = 0.0;
  void _setvalue(double value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 200),
              //Person information
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Personal Information",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextfieldUpdate(
                        label: "Display Name",
                        hint: "Please name your account",
                      ),
                      const SizedBox(height: 15),
                      TextfieldUpdate(
                        label: "Your Profession",
                        hint: "Example 1: Board-certified"
                            " Dermatologist specializing in cosmetic  procedures  and  "
                            "skin cancer treatments                              "
                            "                                                        "
                            "Example 2: Certified Personal Trainer focusing on weight"
                            " loss and strength training for all fitness levels",
                        maxLines: 6,
                      ),
                      const SizedBox(height: 15),
                      TextfieldUpdate(
                          label: "Your Professional Title",
                          hint: "Ex: Personal Trainer/ Therapist/  Dentist"),
                      const SizedBox(height: 15),
                      TextfieldUpdate(
                          label: "Country", hint: "Abc country list"),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Divider(
                          color: Color.fromARGB(255, 243, 243, 243),
                        ),
                      ),
                      //Button Cancel / Add
                      ButtonUpdateProfile(
                          textButton1: "Cancel", textButton2: "Add"),

                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              //About
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('About',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.all(10),
                        color: const Color(0xffF1F1F1),
                        child: const Text(
                          "Please introduce yourself. Consider including:\n"
                          "- Your experience in the field\n"
                          "- Key achievements or certifications\n"
                          "- Your approach to patient care or work methodology\n"
                          "- Any specializations or areas of expertise",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            height: 1.5,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      //Button Cancel / Add
                      ButtonUpdateProfile(
                          textButton1: "Cancel", textButton2: "Add"),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              //LANGUGE
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 290,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Languages",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            //Add lannguage
                            TextfieldUpdate(label: '', hint: 'Add language'),
                            const SizedBox(height: 16),
                            //SELECT LANGUEGE
                            DropdownButtonFormField<String>(
                              value: selectedLanguageLevel,
                              hint: const Text("Language Level"),
                              items: levels.map((String level) {
                                return DropdownMenuItem<String>(
                                  value: level,
                                  child: Text(level),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  selectedLanguageLevel = newValue;
                                });
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusColor: Colors.black,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffF1F2F4)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                              dropdownColor: Colors.grey[200],
                            ),
                            const SizedBox(height: 16),
                            //Button Cancel / Add
                            ButtonUpdateProfile(
                                textButton1: "Cancel", textButton2: "Add"),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              LanguageTile(language: "English", level: "Basic"),
              LanguageTile(language: "French", level: "Conversational"),
              const SizedBox(height: 10),

              // Experience Form
              _buildExperienceForm(),

              // Experience Display Card
              ExperienceCard(
                position: "• Software Developer",
                company: "Micro Infotech",
                employmentType: "Full Time",
                duration: "Jun 2020 - Jun 2021",
                location: "Bengaluru, Karnataka, India",
              ),
              _buildEducation(),
              // Education Display Card
              ExperienceCard(
                position: "• IIT Delhir",
                company: "Computer Engineering",
                employmentType: "M.Tech",
                duration: "Jun 2016 - Jun 2018",
                location: "Bengaluru, Karnataka, India",
              ),
              _buildSkill(),
              _buildCertification(),
              ExperienceCard(
                position:
                    "• Advanced Medical Training Program Certification Program Certification",
                company: "",
                employmentType: "New York Medical Institute",
                duration: "July 2022",
                location: "7890 Wellness Ave, New York, USA",
              ),
              const SizedBox(height: 250),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 200,
        width: double.infinity,
        child: Card(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Completion Rate: 50%',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                  const SizedBox(height: 10),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 12.0,
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 7),
                          activeTrackColor: const Color(0xff1F2D44),
                          thumbColor: const Color(0xff1F2D44),
                        ),
                        child: Slider(
                          value: _value,
                          onChanged: _setvalue,
                        ),
                      )),
                  //Button Cancel / continue
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 120,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(width: 1, color: Colors.red),
                            backgroundColor: Colors.white,
                          ),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 180,
                        child: ElevatedButton(
                          onPressed: () {
                            print('Nút đã được nhấn continue!');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          child: const Text(
                            '  continue  ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

//Certification Form
  _buildCertification() {
    return Card(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Certification',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 10),
            TextfiledExprience(hintText: "Certificate Or Award"),
            const SizedBox(height: 10),
            TextfiledExprience(hintText: "Certified From"),
            const SizedBox(height: 10),
            SizedBox(
              width: 180,
              child: _buildDropdown('year'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(
                color: Color.fromARGB(255, 243, 243, 243),
              ),
            ),
            //Button Cancel / Add
            ButtonUpdateProfile(
              textButton1: "Cancel",
              textButton2: "Add",
              onPressed2: () {},
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

//Skill Form
  _buildSkill() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Skills",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 15),
            DropdownButtonFormField<String>(
              value: selectedSkill,
              hint: const Text("Add Skill (e.g. Voice Talent)"),
              items: levels.map((String skills) {
                return DropdownMenuItem<String>(
                  value: skills,
                  child: Text(skills),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedLanguageLevel = newValue;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusColor: Colors.black,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xffF1F2F4)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              style: const TextStyle(
                fontSize: 13,
                color: Colors.black,
              ),
              dropdownColor: Colors.grey[200],
            ),
            const SizedBox(height: 20),
            // Button Cancel / Add
            ButtonUpdateProfile(textButton1: "Cancel", textButton2: "Add"),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Color.fromARGB(255, 243, 243, 243),
              ),
            ),

            // Phần hiển thị danh sách skill
            Flexible(
              child: _buildSkillSellect('Python'),
            ),
          ],
        ),
      ),
    );
  }

//SkillSellect
  _buildSkillSellect(String skill) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 40,
      width: 110,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Row(
          children: [
            const SizedBox(width: 10),
            Text(skill),
            const SizedBox(width: 5),
            const Icon(
              Icons.cancel_rounded,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

//Education Form
  _buildEducation() {
    return Card(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Education',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 10),
            TextfiledExprience(hintText: "Address / Country"),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(flex: 1, child: _buildDropdown("Title")),
                const SizedBox(width: 10),
                Expanded(flex: 2, child: TextfiledExprience(hintText: "Major")),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: _buildDropdown("from year")),
                const SizedBox(width: 10),
                Expanded(child: _buildDropdown("to year")),
              ],
            ),
            const SizedBox(height: 10),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(
                color: Color.fromARGB(255, 243, 243, 243),
              ),
            ),
            //Button Cancel / Add
            ButtonUpdateProfile(textButton1: "Cancel", textButton2: "Add"),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

//Experience Form
  _buildExperienceForm() {
    return Card(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Experience',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 10),
            TextfiledExprience(hintText: "Position in the company"),
            const SizedBox(height: 10),
            TextfiledExprience(hintText: "Company / business name"),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: _buildDropdown("From year")),
                const SizedBox(width: 10),
                Expanded(child: _buildDropdown("To year")),
              ],
            ),
            const SizedBox(height: 10),
            TextfiledExprience(hintText: "Full time"),
            const SizedBox(height: 10),
            TextfiledExprience(hintText: "Address"),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(
                color: Color.fromARGB(255, 243, 243, 243),
              ),
            ),
            //Button Cancel / Add
            ButtonUpdateProfile(textButton1: "Cancel", textButton2: "Add"),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  _buildDropdown(String hint) {
    return SizedBox(
      height: 50,
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          filled: true,
          hintStyle: const TextStyle(fontSize: 13, color: Colors.grey),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          focusColor: Colors.black,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        hint: Text(
          hint,
          style: const TextStyle(fontSize: 13, color: Colors.grey),
        ),
        dropdownColor: Colors.white,
        items: List.generate(
          10,
          (index) => DropdownMenuItem(
            value: (2020 + index).toString(),
            child: Text((2020 + index).toString()),
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
