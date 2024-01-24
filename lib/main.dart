import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        // #docregion addWidget
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: 'images/galapagos.jpg',
              ),
              TitleSection(
                name: 'Islas Galápagos',
                location: 'Provincia de Galápagos',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Las Islas Galápagos son conocidas por su diversidad única de flora y fauna. '
                    'Fueron declaradas Patrimonio de la Humanidad por la UNESCO. '
                    'Aquí, puedes observar tortugas gigantes, leones marinos y una gran variedad de aves.',
              ),
              ImageSection(
                image: 'images/montecristi.jpg',
              ),
              TitleSection(
                name: 'Montecristi',
                location: 'Provincia de Manabí',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Montecristi es famosa por sus sombreros de paja toquilla, conocidos como "sombreros de Montecristi". '
                    'Estos sombreros son apreciados por su calidad y artesanía.',
              ),
              ImageSection(
                image: 'images/cuenca.jpg',
              ),
              TitleSection(
                name: 'Cuenca',
                location: 'Provincia de Azuay',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Cuenca es una ciudad declarada Patrimonio de la Humanidad por la UNESCO. '
                    'Con su arquitectura colonial, ríos, y puentes históricos, Cuenca es conocida por su encanto y cultura.',
              ),
              ImageSection(
                image: 'images/quito.jpg',
              ),
              TitleSection(
                name: 'Quito',
                location: 'Provincia de Pichincha',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Quito, la capital de Ecuador, está situada en la cordillera de los Andes. '
                    'Cuenta con un centro histórico bien conservado, lleno de iglesias coloniales y calles empedradas. '
                    'La Mitad del Mundo, un monumento en la línea ecuatorial, también es una atracción popular.',
              ),
              ImageSection(
                image: 'images/banos.jpg',
              ),
              TitleSection(
                name: 'Baños de Agua Santa',
                location: 'Provincia de Tungurahua',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Baños es famosa por sus aguas termales y su entorno natural. '
                    'Rodeada de montañas y cascadas, la ciudad es un destino popular para actividades al aire libre '
                    'como el senderismo, el ciclismo y los deportes acuáticos.',
              ),
              ImageSection(
                image: 'images/nestor.png',
              ),
              TitleSection(
                name: 'Néstor Chumania',
                location: 'Estudiante de Desarrollo de Software',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Néstor es un apasionado estudiante de desarrollo de software. '
                    'Actualmente, está inmerso en el mundo de la programación, aprendiendo diversos lenguajes '
                    'y frameworks para convertirse en un talentoso desarrollador.',
              ),
              ImageSection(
                image: 'images/daniel.png',
              ),
              TitleSection(
                name: 'Daniel Quishpe',
                location: 'Estudiante de Desarrollo de Software',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Daniel está enfocado en su camino para convertirse en un desarrollador de software. '
                    'Con una mente creativa y habilidades analíticas, está explorando diferentes áreas '
                    'como el desarrollo web y la inteligencia artificial.',
              ),
              ImageSection(
                image: 'images/salome.png',
              ),
              TitleSection(
                name: 'Salomé Quispe',
                location: 'Estudiante de Desarrollo de Software',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Salomé está embarcando su viaje hacia el desarrollo de software con entusiasmo. '
                    'Su curiosidad y dedicación la llevan a aprender nuevas tecnologías y a enfrentar '
                    'desafíos creativos para construir soluciones innovadoras.',
              ),
            ],
          ),
        ),
        // #enddocregion addWidget
      ),
    );
  }
}
class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const FavoriteWidget(),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}

// #docregion FavoriteWidget
class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}
// #enddocregion FavoriteWidget

// #docregion _FavoriteWidgetState, _FavoriteWidgetState-fields, _FavoriteWidgetState-build
class _FavoriteWidgetState extends State<FavoriteWidget> {
  // #enddocregion _FavoriteWidgetState-build
  bool _isFavorited = true;
  int _favoriteCount = 41;

  // #enddocregion _FavoriteWidgetState-fields

  // #docregion _toggleFavorite
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  // #enddocregion _toggleFavorite

  // #docregion _FavoriteWidgetState-build
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
// #docregion _FavoriteWidgetState-fields
}