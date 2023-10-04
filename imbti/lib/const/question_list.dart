import 'package:imbti/models/questions_model.dart';

List<Question> questionList = [
  Question(
    id: 1,
    content: '파티에서 당신은 어떻게 행동하나요?',
    answerA: 'a. 많은 사람들, 포함하여 낯선 사람들과도 적극적으로 대화한다',
    answerB: 'b. 알고 있는 몇몇 사람들과 주로 대화한다',
    categoryA: 'E',
    categoryB: 'I',
  ),
  Question(
    id: 2,
    content: '당신은 더 어떤 편인가요?',
    answerA: 'a. 현실적인',
    answerB: 'b. 상상력이 풍부한',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 3,
    content: '다음 중 더 피하고 싶은 것은?',
    answerA: 'a. 항상 공상에 빠져있다',
    answerB: 'b. 항상 일정한 패턴에 얽매인다',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 4,
    content: '당신은 어떤 것에 더 감동받나요?',
    answerA: 'a. 원칙',
    answerB: 'b. 감정',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 5,
    content: '당신은 어떤 것에 더 끌리나요?',
    answerA: 'a. 설득력 있는 것',
    answerB: 'b. 마음을 울리는 것',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 6,
    content: '일할 때 당신의 스타일은?',
    answerA: 'a. 마감 시간을 정해 일한다',
    answerB: 'b. 특정한 시간 없이 언제든지 일한다',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 7,
    content: '당신은 선택할 때 주로 어떻게 하나요?',
    answerA: 'a. 신중하게 선택한다',
    answerB: 'b. 감정에 따라 즉흥적으로 선택한다',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 8,
    content: '파티에서 당신은 주로?',
    answerA: 'a. 에너지가 증가하며 늦게까지 남는다',
    answerB: 'b. 에너지가 줄어들며 일찍 떠난다',
    categoryA: 'E',
    categoryB: 'I',
  ),
  Question(
    id: 9,
    content: '당신은 어떤 사람에게 더 끌리나요?',
    answerA: 'a. 현실적인 사람',
    answerB: 'b. 상상력이 풍부한 사람',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 10,
    content: '당신이 더 관심있는 것은?',
    answerA: 'a. 현재의 현실',
    answerB: 'b. 미래의 가능성',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 11,
    content: '다른 사람을 평가할 때 당신은 어떤 것에 더 영향을 받나요?',
    answerA: 'a. 법보다 상황',
    answerB: 'b. 상황보다 법',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 12,
    content: '다른 사람들과 교류할 때 당신의 성향은?',
    answerA: 'a. 객관적이다',
    answerB: 'b. 개인적이다',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 13,
    content: '당신은 더 어떤 편인가요?',
    answerA: 'a. 시간을 엄수하는',
    answerB: 'b. 여유로운',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 14,
    content: '어떤 상황이 더 괴롭히나요?',
    answerA: 'a. 끝나지 않는 일',
    answerB: 'b. 완료된 일',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 15,
    content: '사회적인 그룹에서 당신은 주로?',
    answerA: 'a. 다른 사람들의 최신 소식을 계속 알고 있다',
    answerB: 'b. 소식에 뒤처진다',
    categoryA: 'E',
    categoryB: 'I',
  ),
  Question(
    id: 16,
    content: '보통의 일을 할 때, 당신은 주로 어떻게 행동하나요?',
    answerA: 'a. 보통 방식대로 한다',
    answerB: 'b. 자신만의 방식대로 한다',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 17,
    content: '작가들은 주로 어떤 스타일을 가져야 한다고 생각하나요?',
    answerA: 'a. 말하려는 바를 확실히 말해야한다',
    answerB: 'b. 비유를 사용하여 표현해야한다',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 18,
    content: '다음 중 어떤 것이 당신을 더 매혹하나요?',
    answerA: 'a. 일관된 사고',
    answerB: 'b. 조화로운 인간 관계',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 19,
    content: '판단을 내릴 때 당신은 더 편한 편은?',
    answerA: 'a. 논리적인 판단을 내린다',
    answerB: 'b. 가치 판단을 내린다',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 20,
    content: '당신은 어떤 것을 원하나요?',
    answerA: 'a. 결정된 것',
    answerB: 'b. 미정인 것',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 21,
    content: '당신은 더 어떤 성향을 가지고 있나요?',
    answerA: 'a. 진지하고 결단력이 있는 편이다',
    answerB: 'b. 편안하고 긍정적인 편이다',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 22,
    content: '전화할 때, 당신은 주로 어떻게 행동하나요?',
    answerA: 'a. 대화 내용이 모두 말릴 것을 거의 의심하지 않는다',
    answerB: 'b. 말할 내용을 미리 연습한다',
    categoryA: 'E',
    categoryB: 'I',
  ),
  Question(
    id: 23,
    content: '사실들은 주로 어떤 역할을 하나요?',
    answerA: 'a. 자체로 말한다',
    answerB: 'b. 원칙을 설명한다',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 24,
    content: '미래를 예측하는 사람들은 어떤 인상을 주나요?',
    answerA: 'a. 다소 성가신',
    answerB: 'b. 상당히 흥미로운',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 25,
    content: '당신은 어떤 유형인가요?',
    answerA: 'a. 냉정한 사람',
    answerB: 'b. 따뜻한 마음을 가진 사람',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 26,
    content: '다음 중 어느 것이 더 나쁜 것이라고 생각하나요?',
    answerA: 'a. 불공평한',
    answerB: 'b. 무자비한',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 27,
    content: '일반적으로 사건들이 어떻게 일어나는 것이 좋다고 생각하나요?',
    answerA: 'a. 신중한 선택과 선택으로',
    answerB: 'b. 무작위로 그리고 우연히',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 28,
    content: '다음 중 어느 것에 대해 더 좋아하나요?',
    answerA: 'a. 구매했을 때',
    answerB: 'b. 구매 옵션을 가지고 있을 때',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 29,
    content: '다른 사람과 함께 있을 때, 당신은 어떻게 행동하나요?',
    answerA: 'a. 대화를 시작한다',
    answerB: 'b. 대화를 걸려고 기다린다',
    categoryA: 'E',
    categoryB: 'I',
  ),
  Question(
    id: 30,
    content: '상식은 주로 어떻게 생각하나요?',
    answerA: 'a. 거의 의문이 없다',
    answerB: 'b. 자주 의문이 생긴다',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 31,
    content: '아이들은 종종:',
    answerA: 'a. 충분히 유용하게 자신을 표현하지 않는다',
    answerB: 'b. 충분히 상상력을 발휘하지 않는다',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 32,
    content: '결정을 할 때, 더 편안하게 느끼는 것은?',
    answerA: 'a. 기준',
    answerB: 'b. 감정',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 33,
    content: '당신은 더:',
    answerA: 'a. 단호한 편이다',
    answerB: 'b. 부드러운 편이다',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 34,
    content: '다음 중 어느 것이 더 존경스러운가요?',
    answerA: 'a. 조직화하고 체계적으로 행동하는 능력',
    answerB: 'b. 적응하고 주어진 환경이나 상황에서 최대한 활용하는 능력',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 35,
    content: '당신이 더 중요하게 생각하는 것은?',
    answerA: 'a. 무한대',
    answerB: 'b. 개방적 마음',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 36,
    content: '새롭고 평범하지 않은 다른 사람들과의 상호작용은:',
    answerA: 'a. 당신을 자극하고 에너지를 준다',
    answerB: 'b. 당신의 에너지를 소모시킨다',
    categoryA: 'E',
    categoryB: 'I',
  ),
  Question(
    id: 37,
    content: '당신은 더 자주 어떤 유형의 사람인가요?',
    answerA: 'a. 실용적인 사람',
    answerB: 'b. 공상적인 사람',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 38,
    content: '당신은 더 자주:',
    answerA: 'a. 다른 사람들이 어떻게 유용한지 본다',
    answerB: 'b. 다른 사람들이 어떻게 보는지 본다',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 39,
    content: '더 만족스러운 것은?',
    answerA: 'a. 이슈에 대해 철저하게 논의하는 것',
    answerB: 'b. 이슈에 대한 합의에 도달하는 것',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 40,
    content: '무엇이 당신을 더 지배하나요?',
    answerA: 'a. 당신의 머리',
    answerB: 'b. 당신의 마음',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 41,
    content: '당신은 어떤 작업에 더 편안하게 느끼나요?',
    answerA: 'a. 계약된 작업',
    answerB: 'b. 캐주얼한 기반에서 수행되는 작업',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 42,
    content: '당신은 주로 무엇을 찾으려고 하나요?',
    answerA: 'a. 체계적인 것',
    answerB: 'b. 무엇이 나타날지 모르는 것',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 43,
    content: '당신은 주로:',
    answerA: 'a. 많은 친구들을 가지고 짧게 연락하는 편이다',
    answerB: 'b. 소수의 친구들을 가지고 긴 시간 연락하는 편이다',
    categoryA: 'E',
    categoryB: 'I',
  ),
  Question(
    id: 44,
    content: '당신은 더 많이 의지하나요?',
    answerA: 'a. 사실',
    answerB: 'b. 원칙',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 45,
    content: '당신은 어떤 것에 더 관심이 있나요?',
    answerA: 'a. 생산 및 분배',
    answerB: 'b. 설계 및 연구',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 46,
    content: '다음 중 더 큰 칭찬은?',
    answerA: 'a. 그 사람은 정말 논리적이다.',
    answerB: 'b. 그 사람은 정말 감성적이다.',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 47,
    content: '당신 자신에게 더 중요하게 생각하는 것은?',
    answerA: 'a. 흔들림 없는 것',
    answerB: 'b. 헌신하는 것',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 48,
    content: '다음 중 어떤 발언을 더 선호하나요?',
    answerA: 'a. 최종적이고 변경 불가능한 발언',
    answerB: 'b. 잠정적이고 초기의 발언',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 49,
    content: '당신은 언제 더 편안하게 느끼나요?',
    answerA: 'a. 결정한 후에',
    answerB: 'b. 결정하기 전에',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 50,
    content: '당신은:',
    answerA: 'a. 낯선 사람과 쉽게 길게 대화한다',
    answerB: 'b. 낯선 사람에게 할 말이 별로 없다',
    categoryA: 'E',
    categoryB: 'I',
  ),
  Question(
    id: 51,
    content: '당신은 주로 어떤 것을 더 신뢰하나요?',
    answerA: 'a. 경험',
    answerB: 'b. 직감',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 52,
    content: '당신은 주로 어떻게 느끼나요?',
    answerA: 'a. 실용적이다',
    answerB: 'b. 독창적이다',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 53,
    content: '다음 중 누가 더 칭찬받을 만한가요?',
    answerA: 'a. 명확한 이성을 가진 사람',
    answerB: 'b. 강한 감정을 가진 사람',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 54,
    content: '당신은 더:',
    answerA: 'a. 공정하게 대하는 편이다',
    answerB: 'b. 공감하는 편이다',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 55,
    content: '대부분의 상황에서 당신은 어떻게 원하나요?',
    answerA: 'a. 일들이 정돈되게 하는 것',
    answerB: 'b. 일들이 그냥 발생하게 하는 것',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 56,
    content: '관계에서 대부분의 것들이 어떻게 되어야 한다고 생각하나요?',
    answerA: 'a. 재협상 가능해야 한다',
    answerB: 'b. 무작위이고 상황에 따라 달라져야 한다',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 57,
    content: '전화벨이 울릴 때, 당신은:',
    answerA: 'a. 빠르게 받으려고 한다',
    answerB: 'b. 다른 사람이 받기를 바란다',
    categoryA: 'E',
    categoryB: 'I',
  ),
  Question(
    id: 58,
    content: '당신은 자신에게 무엇을 더 중요하게 생각하나요?',
    answerA: 'a. 강한 현실감',
    answerB: 'b. 생생한 상상력',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 59,
    content: '당신은 어떤 것에 더 끌리나요?',
    answerA: 'a. 기본적인 것',
    answerB: 'b. 은은한 것',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 60,
    content: '다음 중 더 큰 오류는?',
    answerA: 'a. 너무 열정적이다',
    answerB: 'b. 너무 객관적이다',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 61,
    content: '당신은 자신을 기본적으로 어떻게 보나요?',
    answerA: 'a. 냉철한 사람',
    answerB: 'b. 마음이 따뜻한 사람',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 62,
    content: '다음 중 어떤 상황이 더 마음에 드나요?',
    answerA: 'a. 구조화되고 예정된 상황',
    answerB: 'b. 비구조화되고 계획되지 않은 상황',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 63,
    content: '당신은 주로 어떤 사람인가요?',
    answerA: 'a. 일상적이다',
    answerB: 'b. 엉뚱하다',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 64,
    content: '당신은 더:',
    answerA: 'a. 쉽게 접근하는 사람',
    answerB: 'b. 다소 조심스러운 사람',
    categoryA: 'E',
    categoryB: 'I',
  ),
  Question(
    id: 65,
    content: '글쓰기에서 당신은 무엇을 더 선호하나요?',
    answerA: 'a. 더 구체적인 것',
    answerB: 'b. 더 은유적인 것',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 66,
    content: '당신에게 더 어려운 것은?',
    answerA: 'a. 다른 사람들에게 공감하는 것',
    answerB: 'b. 다른 사람들을 활용하는 것',
    categoryA: 'S',
    categoryB: 'N',
  ),
  Question(
    id: 67,
    content: '당신은 자신에게 무엇을 더 바라나요?',
    answerA: 'a. 명확한 이성',
    answerB: 'b. 강한 동정심',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 68,
    content: '다음 중 더 큰 결함은?',
    answerA: 'a. 무차별하다',
    answerB: 'b. 비판적이다',
    categoryA: 'T',
    categoryB: 'F',
  ),
  Question(
    id: 69,
    content: '당신은 어떤 것을 더 선호하나요?',
    answerA: 'a. 계획된 이벤트',
    answerB: 'b. 무계획의 이벤트',
    categoryA: 'J',
    categoryB: 'P',
  ),
  Question(
    id: 70,
    content: '당신은 주로 어떤 스타일인가요?',
    answerA: 'a. 신중한 편',
    answerB: 'b. 즉흥적인 편',
    categoryA: 'J',
    categoryB: 'P',
  ),
];

List<String> contentList = [
  '파티에서 당신은 어떻게 행동하나요?',
  '당신은 더 어떤 편인가요?',
  '다음 중 더 피하고 싶은 것은?',
  '당신은 어떤 것에 더 감동받나요?',
  '당신은 어떤 것에 더 끌리나요?',
  '일할 때 당신의 스타일은?',
  '당신은 선택할 때 주로 어떻게 하나요?',
  '파티에서 당신은 주로?',
  '당신은 어떤 사람에게 더 끌리나요?',
  '당신이 더 관심있는 것은?',
  '다른 사람을 평가할 때 당신은 어떤 것에 더 영향을 받나요?',
  '다른 사람들과 교류할 때 당신의 성향은?',
  '당신은 더 어떤 편인가요?',
  '어떤 상황이 더 괴롭히나요?',
  '사회적인 그룹에서 당신은 주로?',
  '보통의 일을 할 때, 당신은 주로 어떻게 행동하나요?',
  '작가들은 주로 어떤 스타일을 가져야 한다고 생각하나요?',
  '다음 중 어떤 것이 당신을 더 매혹하나요?',
  '판단을 내릴 때 당신은 더 편한 편은?',
  '당신은 어떤 것을 원하나요?',
  '당신은 더 어떤 성향을 가지고 있나요?',
  '전화할 때, 당신은 주로 어떻게 행동하나요?',
  '사실들은 주로 어떤 역할을 하나요?',
  '미래를 예측하는 사람들은 어떤 인상을 주나요?',
  '당신은 어떤 유형인가요?',
  '다음 중 어느 것이 더 나쁜 것이라고 생각하나요?',
  '일반적으로 사건들이 어떻게 일어나는 것이 좋다고 생각하나요?',
  '다음 중 어느 것에 대해 더 좋아하나요?',
  '다른 사람과 함께 있을 때, 당신은 어떻게 행동하나요?',
  '상식은 주로 어떻게 생각하나요?',
  '아이들은 종종:',
  '결정을 할 때, 더 편안하게 느끼는 것은?',
  '당신은 더:',
];

getLists() {
  List<String> contents = [for (var question in questionList) question.content];
  List<String> answerA = [for (var question in questionList) question.answerA];
  List<String> answerB = [for (var question in questionList) question.answerB];
}