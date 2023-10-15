import 'package:flutter/material.dart';
import 'package:imbti/const/description_map.dart';
import 'package:imbti/const/exMBTI.dart';

import 'package:imbti/const/mbti_data.dart';
import 'package:imbti/models/mbti_model.dart';
import 'package:imbti/models/result_model.dart';
import 'package:imbti/screens/test_screen.dart';
import 'package:imbti/styles/app_colors.dart';
import 'package:imbti/styles/app_text_style.dart';
import 'package:imbti/widgets/main_button.dart';

class ResultScreen extends StatelessWidget {
  final ResultModel resultModel;
  const ResultScreen({super.key, required this.resultModel});

  @override
  Widget build(BuildContext context) {
    List<MBTIModel> mbtiList =
        mbtiData.map((data) => MBTIModel.fromMap(data)).toList();
    String src = resultModel.mbti.toLowerCase();
    return Scaffold(
      backgroundColor: Color(0xffF8F5F5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 80,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      resultModel.mbti,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      mbtiName[resultModel.mbti.toUpperCase()]!,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
                border: Border(
                  bottom: BorderSide(
                    width: 7,
                    color: Colors.black,
                  ),
                  left: BorderSide(
                    width: 3,
                    color: Colors.black,
                  ),
                  right: BorderSide(
                    width: 3,
                    color: Colors.black,
                  ),
                  top: BorderSide(
                    width: 3,
                    color: Colors.black,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 24,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -120,
                      left: 80,
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/$src.png'),
                          ),
                        ),
                      ),
                    ),
                    ListView(
                      padding: EdgeInsets.all(0),
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 32),
                          alignment: Alignment.topLeft,
                          child: Text(
                            resultModel.description,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: -24,
                      right: 0,
                      child: TextButton(
                        onPressed: () {
                          showDraggableBottomSheet(context);
                        },
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '자세히 보기',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                              Icon(
                                Icons.navigate_next,
                                color: Colors.grey[600],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Center(
            child: MainButton(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => TestScreen()));
                },
                buttonText: '다시 검사하기'),
          )
        ],
      ),
    );
  }

  void showDraggableBottomSheet(BuildContext context) {
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
                    margin: EdgeInsets.symmetric(
                      vertical: 16,
                    ),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              resultModel.mbti,
                              style: AppTextStyles.header24(),
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              description[resultModel.mbti.toUpperCase()],
                              style: AppTextStyles.body16M(),
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
