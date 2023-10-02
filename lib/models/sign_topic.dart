class SignTopic {
  final int topicId;
  final String topicName;
  final String avatarURL;
  final String decription;
  bool isSelected;

  SignTopic(
      {required this.topicId,
      required this.topicName,
      required this.avatarURL,
      required this.decription,
      required this.isSelected});

  //List of Plants data
  static List<SignTopic> topicList = [
    SignTopic(
        topicId: 0,
        topicName: 'Hello!',
        avatarURL: 'assets/images/plant-one.png',
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
  ];
}
