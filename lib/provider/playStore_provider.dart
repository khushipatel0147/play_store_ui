import 'package:flutter/widgets.dart';
import 'package:play_store_ui/modal/Playmodal.dart';

class PlayStoreProvider extends ChangeNotifier {
  int value = 0;

  void changeindexbottom(int index) {
    value = index;
    notifyListeners();
  }


  List<Playmodal> dataList = [
    Playmodal(
      photo: [
        'assets/images/games/Angry_birds/2.jpg',
        'assets/images/games/Angry_birds/3.jpg',
        'assets/images/games/Angry_birds/4.jpg',
        'assets/images/games/Angry_birds/5.jpg',
        'assets/images/games/Angry_birds/6.jpg',
      ],
        image: 'assets/images/games/Angry_birds/2.jpg',
        size: '87 MB',
        path: 'assets/images/games/Angry_birds/1.jpg',
        name: 'Angry birds Friends',
        abgame: 'Complete agian the World in special tournaments every week !',
        company: 'Rovio Entertainment Corporation',
        download: '100M+'),
    Playmodal(
      photo:  [
        'assets/images/games/coc/2.jpg',
        'assets/images/games/coc/3.jpg',
        'assets/images/games/coc/4.jpg',
        'assets/images/games/coc/5.jpg',
        'assets/images/games/coc/6.jpg',
      ],
        image: 'assets/images/games/coc/2.jpg',
        size: '290 MB',
        path: 'assets/images/games/coc/1.jpg',
        name: 'Clash of clans',
        abgame: 'Epic combat Stategy game.',
        company: 'Supercell',
        download: '500M+'),
    Playmodal(
      photo: [
        'assets/images/games/cod/2.jpg',
        'assets/images/games/cod/3.jpg',
        'assets/images/games/cod/4.jpg',
        'assets/images/games/cod/5.jpg',
        'assets/images/games/cod/6.jpg',
      ],
        image: 'assets/images/games/cod/2.jpg',
        size: '2.2 GB',
        path: 'assets/images/games/cod/1.jpg',
        name: 'Call of duty',
        abgame: 'PVP,BR,Shooter,Shooting,Zombies,Multiplayer,Teams,Fun,Fps,BP.',
        company: 'Activision Publishing, inc.',
        download: '100M+'),
    Playmodal(
      photo:  [
        'assets/images/games/cricket leage/2.jpg',
        'assets/images/games/cricket leage/3.jpg',
        'assets/images/games/cricket leage/4.jpg',
        'assets/images/games/cricket leage/5.jpg',
        'assets/images/games/cricket leage/6.jpg',
      ],
        image: 'assets/images/games/cricket leage/2.jpg',
        size: '67 MB',
        path: 'assets/images/games/cricket leage/1.jpg',
        name: 'Cricket leage',
        abgame: 'Blazing fast 1v1 cricket game with 2 overs of Blowings.',
        company: 'Miniclip.com',
        download: '10M+'),
    Playmodal(
      photo:  [
        'assets/images/games/farm-city/2.jpg',
        'assets/images/games/farm-city/3.jpg',
        'assets/images/games/farm-city/4.jpg',
        'assets/images/games/farm-city/5.jpg',
        'assets/images/games/farm-city/6.jpg',],
        image: 'assets/images/games/farm-city/2.jpg',
        size: '116 MB',
        path: 'assets/images/games/farm-city/1.jpg',
        name: 'Farm_ city',
        abgame: 'Do Farming & build your dream city.',
        company: 'Zego Studio',
        download: '3M+'),
    Playmodal(
      photo:  [
        'assets/images/games/fishdome/2.jpg',
        'assets/images/games/fishdome/3.jpg',
        'assets/images/games/fishdome/4.jpg',
        'assets/images/games/fishdome/5.jpg',
        'assets/images/games/fishdome/6.jpg',
      ],
        image: 'assets/images/games/fishdome/2.jpg',
        size: '127 MB',
        path: 'assets/images/games/fishdome/1.jpg',
        name: 'Fishdome',
        abgame: 'Swap and match to create lovely homes for adorable fish !.',
        company: 'Playrix',
        download: '10M+'),
    Playmodal(
      photo:[
        'assets/images/games/pvp-fps/2.jpg',
        'assets/images/games/pvp-fps/3.jpg',
        'assets/images/games/pvp-fps/4.jpg',
        'assets/images/games/pvp-fps/5.jpg',
        'assets/images/games/pvp-fps/6.jpg',
      ] ,
        image: 'assets/images/games/pvp-fps/2.jpg',
        size: '2.2 GB',
        path: 'assets/images/games/pvp-fps/1.jpg',
        name: 'Modern Strick online:pvp',
        abgame: 'Online FPS shooting game with action PVP combat.',
        company: 'Azur interactive Games Limited',
        download: '120M+'),
    Playmodal(
      photo: [
        'assets/images/games/shadow_fight/2.jpg',
        'assets/images/games/shadow_fight/3.jpg',
        'assets/images/games/shadow_fight/4.jpg',
        'assets/images/games/shadow_fight/5.jpg',
        'assets/images/games/shadow_fight/6.jpg',
      ],
        image: 'assets/images/games/shadow_fight/2.jpg',
        size: '154 MB',
        path: 'assets/images/games/shadow_fight/1.jpg',
        name: 'Shadow fight',
        abgame: 'Prepare to fight with shadows !',
        company: 'Nekki',
        download: '50M+'),
    Playmodal(
      photo:  [
        'assets/images/games/simcity/1.jpg',
        'assets/images/games/simcity/2.jpg',
        'assets/images/games/simcity/3.jpg',
        'assets/images/games/simcity/4.jpg',
        'assets/images/games/simcity/5.jpg',
        'assets/images/games/simcity/6.jpg',
      ],
        image: 'assets/images/games/simcity/2.jpg',
        size: '149 MB',
        path: 'assets/images/games/simcity/1.jpg',
        name: 'Simcity',
        abgame:
            'Build and manage your very own city, and watch it come to life.',
        company: 'Electonic Arts',
        download: '15M+'),
    Playmodal(
      photo: [
        'assets/images/games/township/2.jpg',
        'assets/images/games/township/3.jpg',
        'assets/images/games/township/4.jpg',
        'assets/images/games/township/5.jpg',
        'assets/images/games/township/6.jpg',
      ],
        image: 'assets/images/games/township/2.jpg',
        size: '124 MB',
        path: 'assets/images/games/township/1.jpg',
        name: 'Township',
        abgame: 'Township : a great for the whole family !',
        company: 'Playrix',
        download: '10M+'),
    Playmodal(
      photo: [
        'assets/images/games/ww2/2.jpg',
        'assets/images/games/ww2/3.jpg',
        'assets/images/games/ww2/4.jpg',
        'assets/images/games/ww2/5.jpg',
        'assets/images/games/ww2/6.jpg',
      ],
        image: 'assets/images/games/ww2/2.jpg',
        size: '2.2 GB',
        path: 'assets/images/games/ww2/1.jpg',
        name: 'Ww2',
        abgame:
            'Legendary multiplayer shooter with players around the world in the WW2 setting !',
        company: 'Azur Interactive Games Limited',
        download: '100M+'),
    Playmodal(
      photo: [
        'assets/images/games/zombie -catchers/2.jpg',
        'assets/images/games/zombie -catchers/3.jpg',
        'assets/images/games/zombie -catchers/4.jpg',
        'assets/images/games/zombie -catchers/5.jpg',
        'assets/images/games/zombie -catchers/6.jpg',
      ],
        image: 'assets/images/games/zombie -catchers/2.jpg',
        size: '88 MB',
        path: 'assets/images/games/zombie -catchers/1.jpg',
        name: 'Zombie catchers',
        abgame:
            'Time to hunt, shoot down zombies & sell dishes to expand your alien business.',
        company: 'Deca Games',
        download: '100M+'),
  ];

  List<Playmodal> appinfo = [
    Playmodal(
        name: "Truecaller: Caller ID",
        company: "Truecaller",
        size: "20 MB",
        download: "1B+",
        abgame: "Know whos calling before answering: caller ID, spam protection & call blocking",
        path: "assets/images/app/call/1.jpg",
        photo: [
          'assets/images/app/call/2.jpg',
          'assets/images/app/call/3.jpg',
          'assets/images/app/call/4.jpg',
          'assets/images/app/call/5.jpg',
          'assets/images/app/call/6.jpg',
        ]),
    Playmodal(
        name: "Facebook",
        company: "Meta Platforms, Inc.",
        size: "70 MB",
        download: "5B+",
        abgame: "Find Frinds, watch live video, play games & save photos in your social network",
        path: "assets/images/app/fb/1.jpg",
        photo: [
          'assets/images/app/fb/2.jpg',
          'assets/images/app/fb/3.jpg',
          'assets/images/app/fb/4.jpg',
          'assets/images/app/fb/5.jpg',
          'assets/images/app/fb/6.jpg',
        ]),
    Playmodal(
        name: "Google Home",
        company: "Google LLC",
        size: "21 MB",
        download: "100M+",
        abgame: "Set up and control your compatible Nest, Chromecast, and Google Home devices",
        path: "assets/images/app/google/1.jpg",
        photo: [
          'assets/images/app/google/2.jpg',
          'assets/images/app/google/3.jpg',
          'assets/images/app/google/4.jpg',
          'assets/images/app/google/5.jpg',
          'assets/images/app/google/6.jpg',
        ]),
    Playmodal(
        name: "Google Pay",
        company: "Google LLC",
        size: "30 MB",
        download: "500M+",
        abgame: "Make UPI payments, recharges, pay biles & businesses with Google pay(Tez)",
        path: "assets/images/app/gpay/1.jpg",
        photo: [
          'assets/images/app/gpay/2.jpg',
          'assets/images/app/gpay/3.jpg',
          'assets/images/app/gpay/4.jpg',
          'assets/images/app/gpay/5.jpg',
          'assets/images/app/gpay/6.jpg',
        ]),
    Playmodal(
        name: "Hotstar",
        company: "Novi Digital",
        size: "50 MB",
        download: "500M+",
        abgame: "Watch the latest Live Sports, TV and Movies in multiple lanuguage",
        path: "assets/images/app/hotstar/1.jpg",
        photo: [
          'assets/images/app/hotstar/2.jpg',
          'assets/images/app/hotstar/3.jpg',
          'assets/images/app/hotstar/4.jpg',
          'assets/images/app/hotstar/5.jpg',
          'assets/images/app/hotstar/6.jpg',
        ]),
    Playmodal(
        name: "Microsoft Edge",
        company: "Microsoft Corporation",
        size: "96 MB",
        download: "50M+",
        abgame: "Browse the web smarter, not harder. Protect your data and save time and money.",
        path: "assets/images/app/medge/1.jpg",
        photo: [
          'assets/images/app/medge/2.jpg',
          'assets/images/app/medge/3.jpg',
          'assets/images/app/medge/4.jpg',
          'assets/images/app/medge/5.jpg',
          'assets/images/app/medge/6.jpg',
        ]),
    Playmodal(
        name: "Microsoft Lens",
        company: "Microsoft Corporation",
        size: "55 MB",
        download: "10M+",
        abgame: "Pocket PDF scanner with integpriced OCR",
        path: "assets/images/app/mlens/1.jpg",
        photo: [
          'assets/images/app/mlens/2.jpg',
          'assets/images/app/mlens/3.jpg',
          'assets/images/app/mlens/4.jpg',
          'assets/images/app/mlens/5.jpg',
          'assets/images/app/mlens/6.jpg',
        ]),
    Playmodal(
        name: "Netflix",
        company: "Netflix, Inc.",
        size: "23 MB",
        download: "1B+",
        abgame: "Netflix is the leading subscription service for watching TV edpisode and movie",
        path: "assets/images/app/netflix/1.jpg",
        photo: [
          'assets/images/app/netflix/2.jpg',
          'assets/images/app/netflix/3.jpg',
          'assets/images/app/netflix/4.jpg',
          'assets/images/app/netflix/5.jpg',
          'assets/images/app/netflix/6.jpg',
        ]),
    Playmodal(
        name: "Snapchat",
        company: "Snap Inc",
        size: "58 MB",
        download: "1B+",
        abgame: "Share the moment!",
        path: "assets/images/app/snapchat/1.jpg",
        photo: [
          'assets/images/app/snapchat/2.jpg',
          'assets/images/app/snapchat/3.jpg',
          'assets/images/app/snapchat/4.jpg',
          'assets/images/app/snapchat/5.jpg',
          'assets/images/app/snapchat/6.jpg',
        ]),
    Playmodal(
        name: "Spotify: Music and Podcasts",
        company: "Spotify AB",
        size: "25 MB",
        download: "1B+",
        abgame: "Listen to songs, play podcasts, create playlist and discover music youll love",
        path: "assets/images/app/spoti/1.jpg",
        photo: [
          'assets/images/app/spoti/2.jpg',
          'assets/images/app/spoti/3.jpg',
          'assets/images/app/spoti/4.jpg',
          'assets/images/app/spoti/5.jpg',
          'assets/images/app/spoti/6.jpg',
        ]),
    Playmodal(
        name: "Whatsapp Messenger",
        company: "Whatsapp LLC",
        size: "30 MB",
        download: "5B+",
        abgame: "Simple, Reliable, Private",
        path: "assets/images/app/whatsapp/1.jpg",
        photo: [
          'assets/images/app/whatsapp/2.jpg',
          'assets/images/app/whatsapp/3.jpg',
          'assets/images/app/whatsapp/4.jpg',
          'assets/images/app/whatsapp/5.jpg',
          'assets/images/app/whatsapp/6.jpg',
        ]),
  ];

  List<Playmodal> offerinfo = [
    Playmodal(
      image: "assets/images/offers/1.jpg",
      path: "assets/images/offers/3.jpg",
      name: "IMVU: Social Chate & Avatar App",
      company: "Social",
    ),
    Playmodal(
      image: "assets/images/offers/2.jpg",
      path: "assets/images/offers/4.jpg",
      name: "Megapolis: City Building Sim",
      company: "Simulation | City-Building",
    )
  ];
  List<Playmodal>book = [
    Playmodal(
        path: "assets/images/books/1.jpg",
        name: "Titanic",
        price: 105,
        page: 215
    ),
    Playmodal(
        path: "assets/images/books/2.jpg",
        name: "The of Paranormal",
        price: 261,
        page: 144
    ),
    Playmodal(
        path: "assets/images/books/3.jpg",
        name: "The Age of Gladiators",
        price: 105,
        page: 255
    ),
    Playmodal(
        path: "assets/images/books/4.jpg",
        name: "The Book of Surrey",
        price: 261,
        page: 144
    ),
    Playmodal(
        path: "assets/images/books/5.jpg",
        name: "Death by Black Hole",
        price: 1549,
        page: 384
    ),
    Playmodal(
        path: "assets/images/books/6.jpg",
        name: "The Science of Interstellar",
        price: 2423,
        page: 336
    ),
    Playmodal(
        path: "assets/images/books/7.jpg",
        name: "Human Universe",
        price: 293,
        page: 272
    ),
    Playmodal(
        path: "assets/images/books/8.jpg",
        name: "Accessory to War",
        price: 1840,
        page: 592
    ),
    Playmodal(
        path: "assets/images/books/9.jpg",
        name: "The Haunted House",
        price: 1,
        page: 23
    ),
    Playmodal(
        path: "assets/images/books/10.jpg",
        name: "Lacuna",
        price: 1,
        page: 173
    ),
    Playmodal(
        path: "assets/images/books/11.jpg",
        name: "Breakers",
        price: 1,
        page: 299
    ),
    Playmodal(
        path: "assets/images/books/12.jpg",
        name: "The Story Fomr The Futuar",
        price: 101,
        page: 45
    ),
  ];
}
