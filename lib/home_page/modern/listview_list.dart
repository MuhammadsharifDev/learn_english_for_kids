class ListViewList {
  String name;
  MyLesson lessons;

  ListViewList({required this.name, required this.lessons});

  static List<ListViewList> itemlist = [
    ListViewList(
      name: 'Greating (Salom/Xayir)',lessons:MyLesson(description: 'Hello-Salom\n Hi-Salom\n Hi Ali-Salom Ali\n HellO NurMuhammad-Salom Nurmuhammad\n Goodbye-Xayr\n Goodbye Ali-Xayir ali\n Goodbye Teacher-Xayir ustoz', title: 'Lesson-1  Greating(Salomlashmoq)', images:'assets/png_picture/hello.webp'),

    ),
    ListViewList(
      name: 'Learn say name (Mening ismim Ali)',lessons:MyLesson(description: 'name-ism\n My name is Ali-Mening ismim Ali\My name is Nurmuhammad-Mening ismim Nurmuhammad\n His name is Akbar-Uning ismi Akbar(Erkaklar uchun)\n Her anme is Adore=Uning ismi Adore(Ayollar uchun)\n What is your name?=Ismingiz nima', title: 'Lesson-2  My name is..', images:'assets/png_picture/name learn.jpeg'),),

    ListViewList(
      name: 'Emotion (Ahvolla Qalay)',lessons:MyLesson(description: 'happy-xursand\n sad -yomon\n smile-kulish\nupset-xafa tushkun\nrelax-xordiq', title: 'Lesson-3  Emotion', images:'assets/png_picture/emotion.png'),),

    ListViewList(
      name: 'Weather (Ob-Havo)',lessons:MyLesson(description: "rain-yom'ir\n cloudy-bulutli\n sunny-quyoshli\ncool-salqin\nbreeze-shabadali\nsunny day-quyoshli kun\n a rain day-quyoshli kun\n warm-iliq\nwindy-shamolli\n cold-sovuq\n lighting-chaqmoq", title: 'Lesson-4 Wheather (Ob-Havo)', images:'assets/png_picture/wheather.jpg'),),

    ListViewList(
      name: 'Color (Ranglar)',lessons:MyLesson(description: 'white-q\nblack-qora\nyellow-sariq\npink-pushti\ngrey-kulrang\ngreen-yashil\nblue-kok\nred-qizil\nbrown-jigarrang', title: 'Lesson-5  Colors(Ranglar)', images:'assets/png_picture/wheather.jpg'),),

    ListViewList(name: 'Adjective (Katta/Kichkina)',lessons:MyLesson(description: "Big-katta\n small-kichkina\n tall-baland\nold-eski\nvery nice-juda ajoyib\nshort-qisqa\n thick-qalin\nthin-yupqa\nwide-keng\n ugly-xunuk\nempty-hechnimasi yoq bosh\nVery nica a day-ajoyib kun\nthick tree-qalin daraxt", title: 'Lesson-6  Adjective', images:'assets/png_picture/adjective.jpg'),),
    ListViewList(
      name: 'Like (Yoqtirmoq)',lessons:MyLesson(description: 'like-yoqtirmoq\n do not like-yoqtirmayman\nenjoy-rohatlanmoq\n I like apple-men olmani yoqtiraman\n I do not like apple-men olmani yoqtirmayman\n I enjoy life-men hayotdan rohatlanaman ', title: 'Lesson-7  Like/Do not like', images:'assets/png_picture/likeandDonot.jpg'),),

    ListViewList(
      name: 'Family (Ota/Ona)',lessons:MyLesson(description: 'family-oila\nFather-ota\nmather-ona\nbrother-aka\nsister-singil\nuncle-amaki toga\naunt-xola amma\n nephew-jiyan\nGrandFather-Bobo\nGrandMother-buvi', title: 'Lesson-8  Family', images:'assets/png_picture/family.jpg'),),

    ListViewList(
      name: 'Jobs (Kasblar)',lessons:MyLesson(description: 'pilot-uchuvchi\nmilitary-harbiy\nteacher-oqituvchi\nfarmer-fermer\nbusinessman-tadbirkor\ndriver-haydovchi\nbuilder-quruvchi', title: 'Lesson-9  Jobs(Kasblar)', images:'assets/png_picture/jobs.jpg'),),

  ];
}

class MyLesson {
  String title;
  String description;
  String images;

  MyLesson({required this.description, required this.title,required this.images});
}
