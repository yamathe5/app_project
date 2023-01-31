import 'package:flutter/material.dart';
import 'app_card.dart';

class AppCardList extends StatelessWidget {
  const AppCardList({super.key});

  @override
  Widget build(BuildContext context) {
    var json = [
      {
        "title": "Diplomado en piping",
        "Desdripcion":
            "Se trata de un diplomado teórico-práctico donde se expondrán los principales conocimientos para el diseño de tuberías, que un profesional del sector tiene que dominar para poder desarrollar su trabajo."
      },
      {
        "title": "Diplomado en piping",
        "Desdripcion":
            "Se trata de un diplomado teórico-práctico donde se expondrán los principales conocimientos para el diseño de tuberías, que un profesional del sector tiene que dominar para poder desarrollar su trabajo."
      },
      {
        "title": "Diplomado en piping",
        "Desdripcion":
            "Se trata de un diplomado teórico-práctico donde se expondrán los principales conocimientos para el diseño de tuberías, que un profesional del sector tiene que dominar para poder desarrollar su trabajo."
      },
      {
        "title": "Diplomado en piping",
        "Desdripcion":
            "Se trata de un diplomado teórico-práctico donde se expondrán los principales conocimientos para el diseño de tuberías, que un profesional del sector tiene que dominar para poder desarrollar su trabajo."
      },
      {
        "title": "Diplomado en piping",
        "Desdripcion":
            "Se trata de un diplomado teórico-práctico donde se expondrán los principales conocimientos para el diseño de tuberías, que un profesional del sector tiene que dominar para poder desarrollar su trabajo."
      },
      {
        "title": "Diplomado en piping",
        "Desdripcion":
            "Se trata de un diplomado teórico-práctico donde se expondrán los principales conocimientos para el diseño de tuberías, que un profesional del sector tiene que dominar para poder desarrollar su trabajo."
      },
      {
        "title": "Diplomado en piping",
        "Desdripcion":
            "Se trata de un diplomado teórico-práctico donde se expondrán los principales conocimientos para el diseño de tuberías, que un profesional del sector tiene que dominar para poder desarrollar su trabajo."
      },
      {
        "title": "Diplomado en piping",
        "Desdripcion":
            "Se trata de un diplomado teórico-práctico donde se expondrán los principales conocimientos para el diseño de tuberías, que un profesional del sector tiene que dominar para poder desarrollar su trabajo."
      },
      {
        "title": "Diplomado en piping",
        "Desdripcion":
            "Se trata de un diplomado teórico-práctico donde se expondrán los principales conocimientos para el diseño de tuberías, que un profesional del sector tiene que dominar para poder desarrollar su trabajo."
      }
    ];

    return SingleChildScrollView(child: Text(json[0].title));
  }
}
