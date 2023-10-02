class Topic {
  final int topicId;
  final String size;
  final double rating;
  final String category;
  final String topicName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Topic(
      {required this.topicId,
      required this.category,
      required this.topicName,
      required this.size,
      required this.rating,
      required this.imageURL,
      required this.isFavorated,
      required this.decription,
      required this.isSelected});

  //List of Plants data
  static List<Topic> topicList = [
    Topic(
      topicId: 0,
      category: 'Energy',
      topicName: 'Heat Energy',
      size: 'Small',
      rating: 4.5,
      imageURL: 'assets/images/topics/heat.png',
      isFavorated: true,
      decription:
          'Actually, heat energy is all around us in volcanoes, in icebergs and in your body. All matter contains heat energy.'
          'Heat energy is the result of the movement of tiny particles called atoms, molecules or ions in solids, liquids and gases. Heat energy can be transferred from one object to another. The transfer or flow due to the difference in temperature between the two objects is called heat.'
          'For example, an ice cube has heat energy and so does a glass of lemonade. If you put the ice in the lemonade, the lemonade (which is warmer) will transfer some of its heat energy to the ice. In other words, it will heat up the ice. Eventually, the ice will melt and the lemonade and water from the ice will be the same temperature. This is known as reaching a state of thermal equilibrium',
      isSelected: false,
    ),
    Topic(
      topicId: 1,
      category: 'Reproduction',
      topicName: 'Human Reproductive System',
      size: 'large',
      rating: 4.5,
      imageURL: 'assets/images/topics/reproduction.png',
      isFavorated: true,
      decription:
          'Human reproductive system, organ system by which humans reproduce and bear live offspring. '
          'Provided all organs are present, normally constructed, and functioning properly, the essential '
          'features of human reproduction are (1) liberation of an ovum, or egg, at a specific time in the reproductive cycle, (2) internal fertilization of the ovum by spermatozoa, or sperm cells, '
          '(3) transport of the fertilized ovum to the uterus, or womb, (4) implantation of the blastocyst, the early embryo developed from the fertilized ovum, in the wall of the uterus, (5) formation of a placenta and maintenance of the unborn child during the entire period of gestation, (6) birth of the child and expulsion of the placenta, and (7) suckling and care of the child, with an eventual return of the maternal organs to virtually their original state.',
      isSelected: false,
    ),
    Topic(
      topicId: 2,
      category: 'Systems',
      topicName: 'The Solar System',
      size: 'large',
      rating: 4.5,
      imageURL: 'assets/images/topics/solar.png',
      isFavorated: true,
      decription:
          'The Solar System is the gravitationally bound system of the Sun and the objects that orbit it. The largest of such objects are the eight planets, in order from the Sun: four terrestrial planets named Mercury, Venus, Earth and Mars, two gas giants named Jupiter and Saturn, and two ice giants named Uranus and Neptune. The terrestrial planets have a definite surface and are mostly made of rock and metal. The gas giants are mostly made of hydrogen and helium, while the ice giants are mostly made of volatile substances such as water, ammonia, and methane. In some texts, these terrestrial and giant planets are called the inner Solar System and outer Solar System planets respectively.',
      isSelected: false,
    ),
    Topic(
      topicId: 3,
      category: 'Systems',
      topicName: 'The Digestion System',
      size: 'large',
      rating: 4.5,
      imageURL: 'assets/images/topics/digestion.png',
      isFavorated: true,
      decription:
          'The digestive system is made up of the digestive tract and other organs that help the body break down and absorb food. It is a long, twisting tube that starts at the mouth and goes through the oesophagus, stomach, small intestine, large intestine and anus.'
          'The digestive system breaks down food into nutrients such as carbohydrates, fats and proteins. They can then be absorbed into the bloodstream so the body can use them for energy, growth and repair. Unused materials are discarded as faeces (poo).',
      isSelected: false,
    ),
    Topic(
      topicId: 4,
      category: 'Diversity of Matter',
      topicName: 'Hazards',
      size: 'large',
      rating: 4.5,
      imageURL: 'assets/images/topics/hazard.png',
      isFavorated: true,
      decription:
          'When we refer to hazards in relation to occupational safety and health the most commonly used definition is ‘A Hazard is a potential source of harm or adverse health effect on a person or persons’. The terms Hazard and Risk are often used interchangeably but this simple example explains the difference between the two. If there was a spill of water in a room then that water would present a slipping hazard to persons passing through it. If access to that area was prevented by a physical barrier then the hazard would remain though the risk would be minimised.',
      isSelected: false,
    ),
    Topic(
      topicId: 5,
      category: 'Energy',
      topicName: 'Potosynthesis',
      size: 'large',
      rating: 4.5,
      imageURL: 'assets/images/topics/potosynthesis.png',
      isFavorated: true,
      decription:
          'Potosynthesis, the process by which green plants and certain other organisms transform light energy into chemical energy. During photosynthesis in green plants, light energy is captured and used to convert water, carbon dioxide, and minerals into oxygen and energy-rich organic compounds.It would be impossible to overestimate the importance of photosynthesis in the maintenance of life on Earth. If photosynthesis ceased, there would soon be little food or other organic matter on Earth. Most organisms would disappear, and in time Earth’s atmosphere would become nearly devoid of gaseous oxygen. ',
      isSelected: false,
    ),
    Topic(
      topicId: 6,
      category: 'Interactions of Matter',
      topicName: 'Magnetism',
      size: 'large',
      rating: 4.5,
      imageURL: 'assets/images/topics/magnetism.png',
      isFavorated: true,
      decription:
          'Magnetism is the class of physical attributes that occur through a magnetic field, which allows objects to attract or repel each other. Because both electric currents and magnetic moments of elementary particles give rise to a magnetic field, magnetism is one of two aspects of electromagnetism. The most familiar effects occur in ferromagnetic materials, which are strongly attracted by magnetic fields and can be magnetized to become permanent magnets, producing magnetic fields themselves. Demagnetizing a magnet is also possible. Only a few substances are ferromagnetic; the most common ones are iron, cobalt, and nickel and their alloys. The rare-earth metals neodymium and samarium are less common examples.',
      isSelected: false,
    ),
    Topic(
      topicId: 7,
      category: 'Diversity of Matter',
      topicName: 'Water',
      size: 'large',
      rating: 4.5,
      imageURL: 'assets/images/topics/water.png',
      isFavorated: true,
      decription:
          'Water is an inorganic compound with the chemical formula H2O. It is a transparent, tasteless, odorless, and nearly colorless chemical substance, and it is the main constituent of Earths hydrosphere and the fluids of all known living organisms (in which it acts as a solvent). It is vital for all known forms of life, despite not providing food energy, or organic micronutrients. Its chemical formula, H2O, indicates that each of its molecules contains one oxygen and two hydrogen atoms, connected by covalent bonds. The hydrogen atoms are attached to the oxygen atom at an angle of 104.45°. "Water" is also the name of the liquid state of H2O at standard temperature and pressure. Because Earths environment is relatively close to waters triple point, water exists on Earth as a solid, liquid, and gas. It forms precipitation in the form of rain and aerosols in the form of fog. Clouds consist of suspended droplets of water and ice, its solid state. When finely divided, crystalline ice may precipitate in the form of snow. The gaseous state of water is steam or water vapor.',
      isSelected: false,
    ),
  ];

  //Get the favorated items
  static List<Topic> getFavoritedPlants() {
    List<Topic> travelList = Topic.topicList;
    return travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Topic> addedToCartPlants() {
    List<Topic> selectedPlants = Topic.topicList;
    return selectedPlants
        .where((element) => element.isSelected == true)
        .toList();
  }
}
