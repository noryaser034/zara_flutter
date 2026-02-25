import 'package:flutter/material.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/core/widgets/main_button.dart';
import 'package:zara/core/widgets/drop_down_container.dart';
import 'package:zara/features/home/widgets/gender_toggle.dart';
import 'package:zara/features/main/main_app_screen.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  bool isMenSelected = true;
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tell us About yourself',
              style: TextStyles.subtitle.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 49),
            Text(
              'Who do you shop for ?',
              style: TextStyles.body.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 22),
            GenderToggle(
              onMenTap: () {
                setState(() {
                  isMenSelected = true;
                });
              },
              onWomenTap: () {
                setState(() {
                  isMenSelected = false;
                });
              },
              isMenSelected: isMenSelected,
            ),
            SizedBox(height: 56),
            Text(
              'How Old are you ?',
              style: TextStyles.body.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 13),
            DropDownContainer(
              selectedValue: selectedValue,
              onChanged: (String? value) {
                setState(() {
                  selectedValue = value;
                });
              },
              items: ['18-25', '26-35', '36-45', '46-60'],
              hint: 'Age Range',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(24, 14, 24, 14),
        child: MainButton(
          text: 'Finish',
          onpress: () {
            pushTo(context, MainAppScreen());
          },
        ),
      ),
    );
  }
}
