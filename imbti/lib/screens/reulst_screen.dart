import 'package:flutter/material.dart';
import 'package:imbti/models/result_model.dart';
import 'package:imbti/widgets/main_button.dart';

class ResultScreen extends StatelessWidget {
  final ResultModel resultModel;
  const ResultScreen({super.key, required this.resultModel});

  @override
  Widget build(BuildContext context) {
    bool bottomOpen = false;
    return Scaffold(
      backgroundColor: Color(0xffF8F5F5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 80,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      '${resultModel.mbti}',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'MBTI 별칭',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
                Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/isfp.png'),
                    )))
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
                padding: const EdgeInsets.all(12.0),
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '${resultModel.description}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          bottomOpen = !bottomOpen;
                        },
                        child: Text(
                          '자세히 보기 >',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Center(child: MainButton(onTap: () {}, buttonText: '다시 검사하기'))
        ],
      ),
    );
  }
}
