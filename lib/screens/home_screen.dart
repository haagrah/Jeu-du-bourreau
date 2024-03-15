import 'package:flutter/material.dart';
import 'package:Bourreau/components/action_button.dart';
import 'package:Bourreau/utilities/hangman_words.dart';

import 'game_screen.dart';
import 'loading_screen.dart';

class HomeScreen extends StatefulWidget {
  final HangmanWords hangmanWords = HangmanWords();

  HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}
void _showPolicyModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Politique de Confidentialité',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.purple),
                ),
                SizedBox(height: 10),
                // Ajoutez votre texte de politique de confidentialité ici
                Text(
                    "Politique de confidentialité pour Le Bourreau\n\n"
  "Nous, l'équipe de développement de Le Bourreau, tenons à garantir à nos utilisateurs une expérience de jeu transparente et sécurisée. Nous comprenons l'importance de la confidentialité des données personnelles, c'est pourquoi nous tenons à vous informer de notre politique de confidentialité.\n\n"
  "Collecte de données :\n\n"
  "Le Bourreau ne collecte aucune donnée personnelle identifiable.\n"
  "Aucune information personnelle, telle que le nom, l'adresse e-mail, l'emplacement géographique ou toute autre information privée, n'est demandée ni collectée par notre application.\n\n"
  "Données de jeu :\n\n"
  "Le Bourreau peut enregistrer localement des données de jeu telles que les scores, les paramètres de jeu et les préférences utilisateur sur votre appareil.\n"
  "Ces données de jeu sont stockées uniquement localement sur votre appareil et ne sont pas transmises à nos serveurs ni à des tiers.\n\n"
  "Cookies et technologies similaires :\n\n"
  "Le Bourreau n'utilise pas de cookies, de balises Web ou d'autres technologies de suivi pour collecter des informations sur les utilisateurs.\n\n"
  "Liens vers des sites tiers :\n\n"
  "Le Bourreau ne contient aucun lien vers des sites tiers qui pourraient collecter des données personnelles.\n\n"
  "Enfants :\n\n"
  "Le Bourreau est destiné à un public général et n'est pas spécifiquement conçu pour les enfants de moins de 13 ans. Nous ne collectons sciemment aucune donnée personnelle auprès des enfants.\n\n"
  "Contact :\n\n"
  "Si vous avez de  s questions ou des préoccupations concernant notre politique de confidentialité, veuillez nous contacter à l'adresse docexchange@gmail.com.\n\n"
  "En utilisant Le Bourreau, vous acceptez notre politique de confidentialité telle qu'elle est décrite ici. Cette politique est sujette à modification et toute modification sera publiée sur cette page.\n\n"
  "Dernière mise à jour : 10/03/2024",
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  'Termes d\'Utilisation',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.purple),
                ),
                SizedBox(height: 10),
                // Ajoutez vos termes d'utilisation ici
                Text(
                  "Termes et Conditions d'Utilisation pour \"Le Bourreau\"\n\n"
                  "Acceptation des Conditions d'Utilisation : En utilisant l'application mobile \"Le Bourreau\", vous acceptez ces Termes et Conditions d'Utilisation. Si vous n'acceptez pas ces conditions, veuillez ne pas utiliser l'application.\n\n"
                  "Propriété Intellectuelle : \"Le Bourreau\" et tout son contenu, y compris mais sans s'y limiter, les graphismes, les sons, les textes et les fonctionnalités, sont la propriété de C2I et sont protégés par les lois sur la propriété intellectuelle.\n\n"
                  "Utilisation Autorisée : Vous êtes autorisé à utiliser \"Le Bourreau\" à des fins de divertissement personnel seulement. Vous ne pouvez pas reproduire, distribuer ou modifier le jeu sans autorisation.\n\n"
                  "Aucune Collecte de Données : \"Le Bourreau\" ne collecte aucune donnée personnelle identifiable de ses utilisateurs.\n\n"
                  "Responsabilité de l'Utilisateur : Vous êtes responsable de votre utilisation de \"Le Bourreau\". Vous vous engagez à ne pas utiliser l'application de manière abusive, frauduleuse ou illégale.\n\n"
                  "Limitation de Responsabilité : C2I ne sera pas responsable des dommages directs, indirects, accessoires, spéciaux ou consécutifs découlant de l'utilisation de \"Le Bourreau\".\n\n"
                  "Modification des Conditions d'Utilisation : C2I se réserve le droit de modifier ces Termes et Conditions d'Utilisation à tout moment et sans préavis. Les modifications seront effectives dès leur publication sur cette page.\n\n"
                  "Résiliation : C2I se réserve le droit de résilier ou de suspendre votre accès à \"Le Bourreau\" en cas de violation de ces Termes et Conditions d'Utilisation.\n\n"
                  "Contact : Pour toute question ou préoccupation concernant ces Termes et Conditions d'Utilisation, veuillez nous contacter à docexchange@gmail.com.",
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    widget.hangmanWords.readWords();
    
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Center(
            child: Container(
              margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              child: const Text(
                'LE BOURREAU',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 55.0,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 3.0),
              ),
            ),
          ),
          Center(
            child: Image.asset(
              'images/gallow.png',
              height: height * 0.49,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Center(
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
//                    width: 155,
                    height: 64,
                    child: ActionButton(
                      buttonTitle: 'Jouer',
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GameScreen(
                              hangmanObject: widget.hangmanWords,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  SizedBox(
//                    width: 155,
                    height: 64,
                    child: ActionButton(
                      buttonTitle: 'Meilleurs Scores',
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoadingScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  SizedBox(
//                    width: 155,
                    height: 34,
                    child: Text(
                    'Haagrah.Mots anglais uniqement pour le moment',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    ),
                  ),
                  SizedBox(
                    height: 44,
                    child: TextButton(
                      onPressed: () {
                        _showPolicyModal(context);
                      },
                      child: Text(
                        "Voir Politique de Confidentialité et les termes d'utilisations",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}


