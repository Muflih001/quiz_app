import 'package:flutter/material.dart';
import 'package:quiz_app/utils/constants/ImageConstents.dart';
import 'package:quiz_app/utils/constants/colorConstatns.dart';
import 'package:quiz_app/views/dartScreen/dartScreen.dart';
import 'package:quiz_app/views/flutterScreen/flutterScreen.dart';
import 'package:quiz_app/views/javaScreen/javaScreen.dart';
import 'package:quiz_app/views/physicsScreen/physicsScreen.dart';
import 'package:quiz_app/views/pythonScreen/pythonScreen.dart';
import 'package:quiz_app/views/reactScreen/reactScreen.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color.fromRGBO(25, 105, 124, 1),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 25.0, top: 100, bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HI Buddy!',
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 36,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Let\'s make this day productive',
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Flexible(
                  child: Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: GridView(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 30,
                      crossAxisCount: 2,
                      mainAxisExtent: 156),
                  children: [
                    CourseCard(
                      image: Imageconstents.dart,
                      subject: 'Dart',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DartScreen()),
                        );
                      },
                    ),
                    CourseCard(
                      image: Imageconstents.flutter,
                      subject: 'Flutter',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FlutterScreen()),
                        );
                      },
                    ),
                    CourseCard(
                      image: Imageconstents.science,
                      subject: 'Physics',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PhysicsScreen()),
                        );
                      },
                    ),
                    CourseCard(
                      image: Imageconstents.python,
                      subject: 'Python',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PythonScreen()),
                        );
                      },
                    ),
                    CourseCard(
                      image: Imageconstents.react,
                      subject: 'React',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReactScreen()),
                        );
                      },
                    ),
                    CourseCard(
                      image: Imageconstents.java,
                      subject: 'Java',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => JavaScreen()),
                        );
                      },
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.image,
    required this.subject,
    required this.onTap,
  });
  final String image;
  final String subject;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 156,
        width: 144,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image))),
            ),
            Text(subject)
          ],
        ),
      ),
    );
  }
}
