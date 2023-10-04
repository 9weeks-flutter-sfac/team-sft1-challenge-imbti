// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:imbti/const/description_map.dart';
import 'package:imbti/const/mbti_data.dart';
import 'package:imbti/models/mbti_model.dart';
import 'package:imbti/models/result_model.dart';
import 'package:imbti/styles/app_colors.dart';
import 'package:imbti/styles/app_text_style.dart';
import 'package:imbti/widgets/strength_chip.dart';

class MBTIInfoScreen extends StatelessWidget {
  const MBTIInfoScreen({super.key});

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
        controller: PageController(viewportFraction: 0.65),
        itemCount: mbtiList.length,
        itemBuilder: (context, index) {
          return Center(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 200,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      color: AppColors.b9,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.2),
                  child: Wrap(
                    spacing: 5,
                    children: [
                      StrengthChip(
                          mbtiList: mbtiList, index: index, strengthsIndex: 0),
                      StrengthChip(
                          mbtiList: mbtiList, index: index, strengthsIndex: 1),
                      StrengthChip(
                          mbtiList: mbtiList, index: index, strengthsIndex: 2),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0, -0.6),
                  child: Image.asset(
                    'assets/images/${mbtiList[index].type.toLowerCase()}.png',
                    width: 120,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.52),
                  child: Container(
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: AppColors.p3Color,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.5),
                  child: InkWell(
                    onTap: () {
                      showDraggableBottomSheet(context, mbtiList, index);
                    },
                    child: Image.asset(
                      'assets/images/list_icon.png',
                      width: 42,
                      height: 42,
                    ),
                  ),
                ),
              ],
            ),
          );
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
                          Text(
                            description[mbtiList[index].type],
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
