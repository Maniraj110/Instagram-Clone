class StatusModel {
  final String? url;
  final String? text;

  StatusModel({
    this.url,
    this.text,
  });
}

class Body {
  final String? avatar;
  final String? name;
  final String? text;
  final String? img;
  final String? desc;

  Body({
    this.avatar,
    this.name,
    this.text,
    this.img,
    this.desc,
  });
}

final List<StatusModel> data = [
  StatusModel(
    url:
        "https://d12swbtw719y4s.cloudfront.net/images/VGWi6OwQ/RG779tSTLbImmtqu0GDo/MooshVeryDetailed.jpeg?w=1200",
    text: "1",
  ),
  StatusModel(
    url:
        "https://wallpapertag.com/wallpaper/full/d/a/7/880156-beautiful-emo-anime-wallpapers-2560x1601.jpg",
    text: "Rajesh",
  ),
  StatusModel(
    url: "https://thecinemaholic.com/wp-content/uploads/2019/08/SAD-ANIME.jpg",
    text: "Sethu",
  ),
  StatusModel(
    url:
        "https://i.pinimg.com/736x/ef/3b/d4/ef3bd43fa138263a8eb2e32093b433ce.jpg",
    text: "Raman",
  ),
  StatusModel(
    url:
        "https://th.bing.com/th/id/R.2ee52de69e01acf9a7801c8051a67dc6?rik=S7pIifoTffKPTA&riu=http%3a%2f%2fami.animecharactersdatabase.com%2fuploads%2fchars%2f5092-1288726035.png&ehk=X9kwoav8UDgPHWJDOJLxVG22nqJhJb%2f1pmowoiMzWo0%3d&risl=&pid=ImgRaw&r=0",
    text: "Yoga",
  ),
];

final List<Body> body_data = [
  Body(
    avatar:
        "https://d12swbtw719y4s.cloudfront.net/images/VGWi6OwQ/RG779tSTLbImmtqu0GDo/MooshVeryDetailed.jpeg?w=1200",
    name: "Maniraj",
    text: "Madurai 20min",
    img:
        "https://www.bwallpaperhd.com/wp-content/uploads/2021/01/NashPoint.jpg",
    desc: "Be yourself; everyone else is already taken. ― Oscar Wilde",
  ),
  Body(
    avatar:
        "https://wallpapertag.com/wallpaper/full/d/a/7/880156-beautiful-emo-anime-wallpapers-2560x1601.jpg",
    name: "Rajesh",
    text: "Madurai 20min",
    img: "https://wallsdesk.com/wp-content/uploads/2017/01/Tel-Aviv-Photos.jpg",
    desc: "So many books, so little time. ― Frank Zappa",
  ),
  Body(
    avatar:
        "https://thecinemaholic.com/wp-content/uploads/2019/08/SAD-ANIME.jpg",
    name: "Sethu",
    text: "Madurai 20min",
    img:
        "https://th.bing.com/th/id/R.db71cba1c06177a48929502f07401c6c?rik=UEKzaqlZQEZQhg&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2fb%2f4%2f6%2f300928.jpg&ehk=jma8v2X0hTLqimglFGsVBzZnjbGUEJaw4Hlqd2VX5sM%3d&risl=&pid=ImgRaw&r=0",
    desc:
        "A room without books is like a body without a soul. ― Marcus Tullius Cicero",
  )
];
