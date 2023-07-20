class NewsModel {
  String title;

  String time;
  String image;
  NewsModel({
    required this.image,
    required this.time,
    required this.title,
  });
}

List<NewsModel> newsData = [
  NewsModel(
    image: 'images/news/1.png',
    time: '04 JUN 2023, 12:16',
    title: 'Roumor Has It: Lampard\'s position under threat, ...',
  ),
  NewsModel(
    image: 'images/news/2.png',
    time: '06 JUN 2023, 11:10',
    title: 'Artrta sees \'natural leader\' Tierney as a future ...',
  ),
  NewsModel(
    image: 'images/news/3.png',
    time: '08 JUN 2023, 14:13',
    title: 'Athletic Bilbao to appoint Marcelino as coach until ...',
  ),
  NewsModel(
    image: 'images/news/4.png',
    time: '10 JUN 2023, 17:18',
    title: 'Barcelona suffer too much, late in game says Ter Stegan ...',
  ),
];
