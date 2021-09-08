
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
  final String answer;
  final bool isServer;
  final List choice;
  final int correctAnswer;
  final String answerSound;
  MultiChoice({
    required this.isServer,
    required this.sentence,
    required this.answer,
    required this.choice,
    required this.correctAnswer,
    required this.answerSound,
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
    choice : [
      {'answer' : '1 am' , 'pathSound' :'assets/audios/sound1.wav' },
      {'answer' : '9 pm' , 'pathSound' :'assets/audios/sound1.wav' },
      {'answer' : '3 am' , 'pathSound' :'assets/audios/sound1.wav' },
      {'answer' : '4 pm' , 'pathSound' :'assets/audios/sound1.wav' },
     
    ],
    answer  :'9 am \n9 โมงเช้า',
    correctAnswer : 2,
    answerSound : 'assets/audios/sound1.wav'
  ),
  MultiChoice(
    sentence:
        'What time do you normally get up?\nปกติคุณตื่นนอนกี่โมง',
    isServer: true,
    choice : [
      '9 am',
      '8 pm',
      '7 am',
      '6 am'
    ],
    answer  :'I usually get up at six on weekdays\nปกติฉันตื่นนอนตอน 6 โมงเช้าในวันธรรมดา',
    correctAnswer : 4,
    answerSound : 'assets/audios/sound2.wav'

  ),
];
