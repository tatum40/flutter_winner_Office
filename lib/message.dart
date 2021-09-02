class Message {
  final String sentenceEng;
  final String sentenceTh;
  Message({
    required this.sentenceEng,
    required this.sentenceTh,
  });
}

List<Message> chats = [
  Message(
    sentenceEng: 'What time do you normally get up?',
    sentenceTh: 'ปกติคุณตื่นนอนกี่โมง',
  ),
  Message(
    sentenceEng:
        'I usually get up at six on weekdays and around 9 at weekends.',
    sentenceTh:
        'ปกติฉันตื่นนอนตอน 6 โมงเช้าในวันธรรมดาและประมาณ 9 โมงเช้าในวันหยุด',
  ),
  Message(
    sentenceEng: 'What do you usually have for breakfast?',
    sentenceTh: 'ปกติคุณกินอะไรเป็นอาหารเช้า',
  ),
  Message(
    sentenceEng: 'I eat fried rice for breakfast.',
    sentenceTh: 'ฉันกินข้าวผัดเป็นอาหารเช้า',
  ),
];
