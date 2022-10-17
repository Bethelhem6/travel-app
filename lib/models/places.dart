class Places {
  final String name;
  final String img;
  final double price;
  final String description;

  Places(
      {required this.description,
      required this.name,
      required this.img,
      required this.price});

  static List<Places> allPlaces = [
    Places(
        name: "Axum ",
        img: "axum.jpeg",
        price: 500,
        description:
            "Aksum is a land steeped in folklore.  Believed to have been the home of the Queen of Sheba and the final resting place of the Ark of the Covenant, this is one of the oldest cities in all of Africa. Look over the walls of the St Mary of Zion Church Complex where the Ark is supposedly kept and visit the Northern Stelea Field to see the ancient Aksumite Obelisks. Despite the incredible history here, because it’s a small town, Aksum is often overlooked by tourists. Enjoy discovering the relics throughout the city, visit mountaintop monasteries, and go underground to view Aksumite empire tombs. Don’t forget to check out Mai Shum, a large rock hewn reservoir that local tribes believe the Queen of Sheba used as her bath."),
    Places(
        name: "The Omo Valley",
        img: "omo.jpg",
        price: 1500,
        description:
            "This is a wonderfully unique look into the tribal people of Ethiopia.  Similar to the Maasai in Kenya, the villages in the Lower Omo Valley haven’t been influenced by the outside world.Here you’ll interact with people whose culture is dramatically different from your own.Visit Daasanach village, try not to stare at the Mursi’s unbelievable lip-plates, or view the jumping of the bull’s ceremony with the Hammer.The region itself is a lovely open savannah leading up to forests in the hills. And if you’re interested, you can also try an African safari while you’re here."),
    Places(
        name: "Gheralta",
        img: "gehrata.jpeg",
        price: 500,
        description:
            "This unspoilt corner of North Eastern Tigray is scenically spectacular with vast spaghetti-western landscapes of flat dry plains and towering rock outcrops known as the Gheralta. The region is most famous for its 35 old rock-hewn churches, the largest concentration anywhere in Ethiopia. The finest are found in splendid isolation on the outcrops and involving a strenuous walk, and the magnificent views, atmospheric interiors and a wealth of old paintings and church treasures are very special indeed."),
    Places(
        name: "Gondar ",
        img: "fasil.jpg",
        price: 400,
        description:
            "The 18th century of Ethiopia was Gondar, where then Emperor Fasiladas built his fairy tale castles. This UNESCO World Heritage Site is now a wonderful museum complex that showcases the last centuries of the country’s emperors. Lying in a bowl of hills, the Camelot of Africa is a magnificent sight. The wealth and splendor of this ancient capital can still be seen in the modern city. Despite its size Gondar is extremely walkable – start from the Italian piazza in the city centre and enjoy a stroll through tin-roofed stone buildings.Great shopping, restaurants, and hotels are all available here. In nearby Gorgora you’ll find a small but impressive Christian monastery."),
    Places(
        name: "The Blue Nile Falls",
        img: "tisabay.jpg",
        price: 1500,
        description:
            "The Nile River is the longest in Africa and its two tributaries are the White Nile and the Blue Nile. The Blue Nile begins in Ethiopia and along its course you’ll find the   Blue Nile Falls – a spot to rival Niagara. About 90 minutes from Bahar Dar the scenery here is truly breath-taking. Locally known as Tis Abbay, or ‘great smoke,’ the falls are about 45 metres high during the rainy season. Just downstream from the falls you’ll find Ethiopia’s first stone bridge, built in the 17th century."),
    Places(
        name: "Rift Valley",
        img: "rift.jpg",
        price: 1500,
        description:
            "The Rift Valley is a chain of seven lakes – each with its own distinct feel.  The passage includes wonderful lakes, hot springs, and lots of fun wildlife. If you’ve come to Africa for the wildlife, you’ll love the Rift Valley. Tourists and locals love to spend time near the hot springs for its therapeutic benefits and because it’s a fabulous way to relax. It makes for a nice road trip to travel the entire length of the valley."),
    Places(
        name: "Babile Elephant Sanctuary",
        img: "elphant.jpg",
        price: 1500,
        description:
            "Only about 1,000 elephants remain in Ethiopia, and by far the largest and most visible herd lives in the Babile Elephant Sanctuary. A short drive from Harar, Babile is also home to gazelles, lions, leopards, cheetahs, and tons of exotic birds. The landscape morphs from rocky outcrops to lovely tree dotted landscapes. Roughly 400 elephants live here and you’ll really love the walking safaris that run each day."),
    Places(
        name: "Harar",
        img: "harhar.jpg",
        price: 800,
        description:
            "This holy, historic and walled city is a mesmerizing web of narrow alleyways. Built in the early 16th century, it’s the oldest Islamic city in Africa. It was once the commercial link between Africa and the middle east and today is an enchanting lost-in-time city that’s famous for the impressive walls and centuries old buildings. There are roughly 99 mosques within the city.  A popular attraction is the nightly ritual of feeding they hyenas which happens on the outskirts of the city. It’s been taking place for generations and you can participate if you’re feeling adventurous."),
    Places(
        name: "Bahirdar",
        img: "bahirdar.jpg",
        price: 500,
        description:
            "The third largest city and first stop on the historic circuit in Ethiopia is Bahar Dar. The vibe in the town is relaxed and the nearby lake and monasteries only add to this. If you haven’t spent time lounging by the lake, then you haven’t had the real Bahar Dar experience. You’ll marvel at the tankwa canoe, a seemingly flimsy vessels made out of woven papyrus which are absolutely unsinkable.  They can handle men and ox!"),
    Places(name: "Karo Trib", img: "karo.jpg", price: 500, description: ""),
    Places(
        name: "Erta Ale",
        img: "ertale.jpeg",
        price: 500,
        description:
            "Of course, Mother Nature has provided her own breath-taking things to do in Ethiopia, including backdrops for the best hiking and climbing holidays on the African continent. A trek to the Erta Ale volcano is moderately challenging, though keep in mind the need for local guides (this is an active volcano) and make proper preparation to face those year-round high temperatures and summer heat peaks in this part of Ethiopia."),
    Places(
        name: "Turmi",
        img: "turmi.jpeg",
        price: 500,
        description:
            "This traditional town, not far from the Kenyan border, lies right down in the heart of the south Omo region and is an important transport hub, located at a three-way road intersection. It is the main town of the Hamer people and is known throughout the Omo Valley for its colourful Monday market, one of the most important in Hamer country."),
    Places(
        name: "Mekele",
        img: "mekele.jpeg",
        price: 500,
        description:
            "Founded by Emperor Yohannes IV in 1881, Mekele is the main and most modern city in the Northern region of Ethiopia and tourism infrastructure is better than in other parts of the country. Set in a basin at 2,200m in the rocky Tigraian Highlands, the city is clean, organised and vibrant. There are many excellent restaurants and it makes a good base from which to explore the surrounding area."),
    Places(
        name: "Langano",
        img: "langano.jpeg",
        price: 500,
        description:
            "Of all the Rift Valley lakes, Lake Langano is the most developed for tourism, lying adjacent to the Abiata-Shals National Park that is dominated by the two lakes for which it is named. Lake Langano is 18 km long and 16 km wide and its soft brown waters are set against the blue backdrop of the Arsi Mountains, which soar to 4000 m. Although the area around the lake is largely deforested, a variety of wildlife live here including hippos, monkeys, baboons, warthogs, and a huge variety of birds."),
    Places(
        name: "Jinka",
        img: "jinka.jpeg",
        price: 500,
        description:
            "Although Jinka is the administrative capital of the South Omo zone it exists in almost isolation from the rest of the country and has a relaxed, rural feel. Set at an altitude of 1490m it is quite temperate and its Saturday market attracts traders from all over the area."),
    Places(
        name: "Balle Mountains National Park",
        img: "bale.jpeg",
        price: 500,
        description:
            "The Bale Mountains National Park is a protected area of approximately 2,200 km2 and is located around 400 km southeast of Addis Ababa. Its high mountains, sweeping valleys, dramatic escarpment and wide expanses of forests provide visitors with a diversity of vistas unique to the Ethiopian highlands. UNESCO has estimated that more mammal species would become extinct were the habitats of the Bale Mountains to decline than if any other area of equivalent size on the globe were to disappear. When this is combined with rare amphibian species, endemic birds and spectacular flora, it is easy to see why the park is designated as a Biodiversity Hotspot by Conservation International."),
    Places(
        name: "Arba Minch",
        img: "karo.jpg",
        price: 500,
        description:
            "Named after the Amharic word for ‘forty springs,’ Arba Minch is an area of many tiny springs that bubble up from the ridge below them.It’s a lovely 3k walk through Nechisar National Park to reach the springs. If you use this area as a stop on the southern Ethiopian circuit, you won’t be disappointed."),
    Places(
        name: "Lake Chamo ‘Crocodile Market’",
        img: "chamo.jpg",
        price: 500,
        description:
            "If you’re imagining a lively bazaar filled with crocodile products made for tourists, you couldn’t be more wrong. Nothing is for sale and the crocs are alive and well at Lake Chamo.  Take an afternoon or early evening boat ride on the lake where you’ll get an up close and personal view of these massive and magnificent creatures. You’ll be surprised to see entire banks along the lake covered with huge Nile crocodiles – some reaching over six metres long."),
    Places(
        name: "Rift Valley Lakes",
        img: "lakes.jpg",
        price: 500,
        description:
            "The Rift Valley stretches from the Red Sea to Mozambique. It’s an incredible piece of real estate and millions of years from now the rifting process, that is ongoing, will entirely split the African continent in two. It’s one of the few geographic features that’s visible from space! It’s an incredible route to travel overland, heading southeast from Addis Ababa, through Mojo, Lake Ziway, Awahs National Park, and beyond. There are a total of five lakes along the route, each with their own unique look and feel."),
    Places(
        name: "Simien Mountains",
        img: "semen.jpg",
        price: 500,
        description:
            "The Simien Mountain range is a designated UNESCO World Heritage Site and is rightfully known as God’s playground. A trek alone the escarpment provides one of the most phenomenal vistas in the country. You’re also guaranteed to run in to a group of the Gelada bleeding heart baboons. Inside the Simien National park are a wide variety of wildlife like the Walia ibex, a goat found nowhere else on Earth."),
    Places(
        name: "Addis Ababa",
        img: "addis.jpg",
        price: 500,
        description:
            "Aksum is a land steeped in folklore.  Believed to have been the home of the Queen of Sheba and the final resting place of the Ark of the Covenant, this is one of the oldest cities in all of Africa. Look over the walls of the St Mary of Zion Church Complex where the Ark is supposedly kept and visit the Northern Stelea Field to see the ancient Aksumite Obelisks. Despite the incredible history here, because it’s a small town, Aksum is often overlooked by tourists. Enjoy discovering the relics throughout the city, visit mountaintop monasteries, and go underground to view Aksumite empire tombs. Don’t forget to check out Mai Shum, a large rock hewn reservoir that local tribes believe the Queen of Sheba used as her bath."),
    Places(
        name: "Sofumer Cave", img: "sofumer.jpg", price: 900, description: ""),
    Places(
        name: "Lalibela",
        img: "lalibela.jpg",
        price: 2500,
        description:
            "Lalibela pretty much blows the mind of everyone who visits.  This medieval settlement was designed to be a kind of second Jerusalem and modern day inhabitants remain proud of this distinction. Lalibela is perched in the middle of a broad church complex made entire of rock. There are 11 churches in the settlement, monolithic and grand, all built by King Lalibela as early as the 12th century. Remarkable because of the architectural design, the churches are actually dug into the ground. The most famous, and most beautiful, is St George’s Cathedral.  An awe-inspiring sight. If you’re so inclined, there are several monasteries in the nearby area that are worth visiting."),
    Places(
        name: "Harar's Hyena ",
        img: "hararjib.jpg",
        price: 800,
        description:
            "This is a far more contemporary offering. Who is the Harar Hyena Man? He’s a local character in the Eastern city of Harar, who calls nightly to attract these wild creatures. He then feeds the hyenas, to the joy of fascinated onlookers. Harar is a fabulous place to visit, famed for its iconic walls and gates, the maze of alleys, and traditional African homes including colourful hanging baskets."),
    Places(
      name: "Dankil Depression ",
      img: "dankil.jpg",
      price: 800,
      description:
          "Positioned on the border between Ethiopia and Eritrea is the Danakil Depression. It’s officially one of driest and hottest places on Earth. With temperatures that often reach 50+ degrees, it’s easy to see why.  This is a surreal piece of real estate that’s strewn with active volcanoes, salted basins, hot springs, and a lava lake – all of which combine to create a very lunar-like landscape. Sitting below sea level, it’s the lowest point in Africa and second in the world (after the Dead Sea). Do a bit of planning before you go as the climate can be harsh if you aren’t prepared.  But the beauty and mystery of this place make any preparation well worth it.",
    ),
  ];

  static List<Places> popular = [
    Places(
      name: "Erta Ale",
      img: "ertale.jpeg",
      price: 500,
      description:
          "Of course, Mother Nature has provided her own breath-taking things to do in Ethiopia, including backdrops for the best hiking and climbing holidays on the African continent. \nA trek to the Erta Ale volcano is moderately challenging, though keep in mind the need for local guides (this is an active volcano) and make proper preparation to face those year-round high temperatures and summer heat peaks in this part of Ethiopia.",
    ),
    Places(
      name: "Lalibela",
      img: "lalibela.jpg",
      price: 2500,
      description:
          "Lalibela pretty much blows the mind of everyone who visits.  This medieval settlement was designed to be a kind of second Jerusalem and modern day inhabitants remain proud of this distinction.\n Lalibela is perched in the middle of a broad church complex made entire of rock. There are 11 churches in the settlement, monolithic and grand, all built by King Lalibela as early as the 12th century. Remarkable because of the architectural design, the churches are actually dug into the ground.\n The most famous, and most beautiful, is St George’s Cathedral. \n An awe-inspiring sight. If you’re so inclined, there are several monasteries in the nearby area that are worth visiting.",
    ),
    Places(
        name: "Arba Minch",
        img: "karo.jpg",
        price: 500,
        description:
            "Named after the Amharic word for ‘forty springs,’ Arba Minch is an area of many tiny springs that bubble up from the ridge below them.It’s a lovely 3k walk through Nechisar National Park to reach the springs. If you use this area as a stop on the southern Ethiopian circuit, you won’t be disappointed."),
    Places(
        name: "Harar",
        img: "harhar.jpg",
        price: 800,
        description:
            "This holy, historic and walled city is a mesmerizing web of narrow alleyways. Built in the early 16th century, it’s the oldest Islamic city in Africa. It was once the commercial link between Africa and the middle east and today is an enchanting lost-in-time city that’s famous for the impressive walls and centuries old buildings. There are roughly 99 mosques within the city. \n A popular attraction is the nightly ritual of feeding they hyenas which happens on the outskirts of the city. \nIt’s been taking place for generations and you can participate if you’re feeling adventurous."),
    Places(
        name: "Gondar ",
        img: "fasil.jpg",
        price: 400,
        description:
            "The 18th century of Ethiopia was Gondar, where then Emperor Fasiladas built his fairy tale castles. This UNESCO World Heritage Site is now a wonderful museum complex that showcases the last centuries of the country’s emperors. Lying in a bowl of hills, the Camelot of Africa is a magnificent sight. The wealth and splendor of this ancient capital can still be seen in the modern city. \nDespite its size Gondar is extremely walkable – start from the Italian piazza in the city centre and enjoy a stroll through tin-roofed stone buildings.Great shopping, restaurants, and hotels are all available here. In nearby Gorgora you’ll find a small but impressive Christian monastery."),
  ];
  static List<Places> recommended = [
    Places(
      name: "Turmi",
      img: "turmi.jpeg",
      price: 500,
      description:
          "This traditional town, not far from the Kenyan border, lies right down in the heart of the south Omo region and is an important transport hub, located at a three-way road intersection. It is the main town of the Hamer people and is known throughout the Omo Valley for its colourful Monday market, one of the most important in Hamer country.",
    ),
    Places(
      name: "Rift Valley Lakes",
      img: "lakes.jpg",
      price: 500,
      description:
          "The Rift Valley stretches from the Red Sea to Mozambique. It’s an incredible piece of real estate and millions of years from now the rifting process, that is ongoing, will entirely split the African continent in two. It’s one of the few geographic features that’s visible from space! It’s an incredible route to travel overland, heading southeast from Addis Ababa, through Mojo, Lake Ziway, Awahs National Park, and beyond. There are a total of five lakes along the route, each with their own unique look and feel.",
    ),
    Places(
        name: "Babile Elephant Sanctuary",
        img: "elphant.jpg",
        price: 1500,
        description:
            "Only about 1,000 elephants remain in Ethiopia, and by far the largest and most visible herd lives in the Babile Elephant Sanctuary. A short drive from Harar, Babile is also home to gazelles, lions, leopards, cheetahs, and tons of exotic birds. The landscape morphs from rocky outcrops to lovely tree dotted landscapes. Roughly 400 elephants live here and you’ll really love the walking safaris that run each day."),
    Places(
        name: "Harar's Hyena ",
        img: "hararjib.jpg",
        price: 800,
        description:
            "This is a far more contemporary offering. Who is the Harar Hyena Man? He’s a local character in the Eastern city of Harar, who calls nightly to attract these wild creatures. He then feeds the hyenas, to the joy of fascinated onlookers. Harar is a fabulous place to visit, famed for its iconic walls and gates, the maze of alleys, and traditional African homes including colourful hanging baskets."),
    Places(
      name: "Dankil Depression ",
      img: "dankil.jpg",
      price: 800,
      description:
          "Positioned on the border between Ethiopia and Eritrea is the Danakil Depression. It’s officially one of driest and hottest places on Earth. With temperatures that often reach 50+ degrees, it’s easy to see why.  This is a surreal piece of real estate that’s strewn with active volcanoes, salted basins, hot springs, and a lava lake – all of which combine to create a very lunar-like landscape. Sitting below sea level, it’s the lowest point in Africa and second in the world (after the Dead Sea). Do a bit of planning before you go as the climate can be harsh if you aren’t prepared.  But the beauty and mystery of this place make any preparation well worth it.",
    ),
  ];
}
