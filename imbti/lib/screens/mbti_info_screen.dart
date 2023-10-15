// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:imbti/const/description_map.dart';
import 'package:imbti/const/mbti_data.dart';
import 'package:imbti/models/mbti_model.dart';
import 'package:imbti/models/result_model.dart';
import 'package:imbti/styles/app_colors.dart';
import 'package:imbti/styles/app_text_style.dart';
import 'package:imbti/widgets/inactive_card.dart';
import 'package:imbti/widgets/strength_chip.dart';

class MBTIInfoScreen extends StatefulWidget {
  const MBTIInfoScreen({super.key});

  @override
  State<MBTIInfoScreen> createState() => _MBTIInfoScreenState();
}

class _MBTIInfoScreenState extends State<MBTIInfoScreen> {
  int curPage = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(pageChanged);
  }

  var pageController = PageController(initialPage: 0, viewportFraction: 0.5);

  void pageChanged() {
    setState(() {
      curPage = pageController.page?.round() ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<MBTIModel> mbtiList =
        mbtiData.map((data) => MBTIModel.fromMap(data)).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.b1,
        elevation: 0.0,
        title: Text(
          'MBTI 대백과',
        ),
      ),
      body: PageView.builder(
        controller: pageController,
        itemCount: mbtiList.length,
        itemBuilder: (context, index) {
          if (index == curPage) {
            return Center(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0, 0.41),
                    child: InkWell(
                      onTap: () {
                        showDraggableBottomSheet(context, mbtiList, index);
                      },
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 200,
                      height: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              mbtiList[index].type,
                              style: AppTextStyles.header24(),
                            ),
                            Text(
                              mbtiList[index].description,
                              style: AppTextStyles.body16M(),
                            ),
                            SizedBox(height: 18),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Wrap(
                                spacing: 4,
                                children: [
                                  StrengthChip(
                                      mbtiList: mbtiList,
                                      index: index,
                                      strengthsIndex: 0),
                                  StrengthChip(
                                      mbtiList: mbtiList,
                                      index: index,
                                      strengthsIndex: 1),
                                  StrengthChip(
                                      mbtiList: mbtiList,
                                      index: index,
                                      strengthsIndex: 2),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, -0.5),
                    child: Image.asset(
                      'assets/images/${mbtiList[index].type.toLowerCase()}.png',
                      width: 120,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0.4),
                    child: InkWell(
                      onTap: () {
                        showDraggableBottomSheet(context, mbtiList, index);
                      },
                      child: Container(
                        width: 68,
                        height: 68,
                        decoration: BoxDecoration(
                          color: AppColors.p3Color,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 8,
                          ),
                        ),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 34,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.b7,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, -0.1),
                    child: Image.asset(
                      'assets/images/${mbtiList[index].type.toLowerCase()}.png',
                      width: 120,
                      height: 200,
                      fit: BoxFit.cover,
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  void showDraggableBottomSheet(
      BuildContext context, List<MBTIModel> mbtiList, int index) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (_) => DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 0.9,
        snap: true,
        snapSizes: [0.6, 0.9],
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 30),
                  child: Container(
                    width: 120,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.b1,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    controller: scrollController,
                    children: [
                      Column(
                        children: [
                          Text(
                            mbtiList[index].type,
                            style: AppTextStyles.header24(),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              description[mbtiList[index].type],
                              style: AppTextStyles.regular,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
