import 'package:flutter/material.dart';
import 'package:imbti/const/question_list.dart';
import 'package:imbti/styles/app_colors.dart';

class MainDrawer extends StatefulWidget {
  final PageController pageController;
  final List<bool> isChecked;
  const MainDrawer(
      {super.key, required this.pageController, required this.isChecked});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
          itemCount: questionList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                widget.pageController.jumpToPage(index);
                Navigator.pop(context);
              },
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text(
                        '문제 ${index + 1}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    widget.isChecked[index]
                        ? Icon(
                            Icons.check_circle_outline,
                            color: AppColors.p4Color,
                          )
                        : Icon(
                            Icons.circle_outlined,
                            color: AppColors.b1,
                          ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
