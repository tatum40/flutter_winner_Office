
class Message {
  final String sentence;
  final bool isServer;
  final int step;
  Message({
    required this.sentence,
    required this.isServer,
    required this.step,
  });
}

class MultiChoice {
  final String sentence;
  final bool isServer;
  final List answer;
  final int correctAnswer;
  MultiChoice({
    required this.isServer,
    required this.sentence,
    required this.answer,
    required this.correctAnswer,
  });
}

List<Message> chats = [
  Message(
      sentence: 'What time do you normally get up? \nปกติคุณตื่นนอนกี่โมง',
      isServer: true,
      step: 1),
  Message(
      sentence:
          'I usually get up at six on weekdays and around 9 at weekends.\nปกติฉันตื่นนอนตอน 6 โมงเช้าในวันธรรมดาและประมาณ 9 โมงเช้าในวันหยุด',
      isServer: false,
      step: 1),
  Message(
      sentence:
          'What do you usually have for breakfast? \nปกติคุณกินอะไรเป็นอาหารเช้า',
      isServer: true,
      step: 2),
  Message(
      sentence: 'I eat fried rice for breakfast. \nฉันกินข้าวผัดเป็นอาหารเช้า',
      isServer: false,
      step: 2),
];

List<MultiChoice> multiChoice = [
  MultiChoice(
    sentence:
        'What time does Andrea normally get up on Saturday \nปกติในวันเสาร์แอนเดียร์จตื่นเวลาเท่าไหร่',
    isServer: true,
    answer : [
      '1am',
      '2pm',
      '3am',
      '4pm'
    ],
    correctAnswer : 1
  ),
  MultiChoice(
    sentence:
        'What time do you normally get up?\nปกติฉันตื่นนอนตอน 6 ปกติคุณตื่นนอนกี่โมง',
    isServer: true,
    answer : [
      '9am',
      '8pm',
      '7am',
      '6pm'
    ],
    correctAnswer : 2
  ),
];
