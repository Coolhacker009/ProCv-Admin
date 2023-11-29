import 'package:flutter/material.dart';
import 'package:procv_admin/delayed_animation.dart';
import 'package:procv_admin/main.dart';

final _formKey = GlobalKey<FormState>();

class Home extends StatefulWidget {
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Veuillez entrer une adresse e-mail";
    }

    // Utilisez une expression régulière pour valider le format de l'e-mail
    bool isValid =
        RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value);

    if (!isValid) {
      return "Veuillez entrer une adresse e-mail valide";
    }

    return null;
  }

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.0,
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Column(
            children: [
              Container(
                color: myPurple,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/img/white.png',
                      height: 100,
                      width: 100,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/img/pc.png',
                        height: 500,
                        width: 500,
                      ),
                    ),
                    Expanded(
                      child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Control Panel Admin',
                                style: TextStyle(
                                    color: myPurple,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: TextFormField(
                                        controller: emailController,
                                        decoration: InputDecoration(
                                            labelText: "Email",
                                            hintText: "Entrez votre prénom",
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular((28))))),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: TextFormField(
                                        controller: passwordController,
                                        obscureText: true,
                                        enableSuggestions: false,
                                        autocorrect: false,
                                        decoration: InputDecoration(
                                            labelText: "Mot de passe",
                                            hintText: "Entrez votre nom",
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular((28))))),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Veillez remplir ce champ";
                                          }
                                          return null;
                                        },
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: TextButton(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20),
                                            child: Text("Connexion",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)),
                                          ),
                                          style: ButtonStyle(
                                              padding:
                                                  MaterialStateProperty.all<EdgeInsets>(
                                                      EdgeInsets.all(15)),
                                              foregroundColor:
                                                  MaterialStateProperty.all<Color>(
                                                      myPurple),
                                              backgroundColor:
                                                  MaterialStateProperty.all<Color>(
                                                      myPurple),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(25.0),
                                                      side: BorderSide(color: myPurple)))),
                                          onPressed: () async {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  backgroundColor: Colors.red,
                                                  content: const Text(
                                                    'Adresse email ou mot de passe incorrect.',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  behavior:
                                                      SnackBarBehavior.floating,
                                                  margin: EdgeInsets.only(
                                                    bottom:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height -
                                                            100,
                                                    left: 10,
                                                    right: 10,
                                                  ),
                                                ),
                                              );
                                            }
                                          }),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(bottom: 2, top: 10),
                                      child: Text("Vous n'avez de compte ?"),
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          "Créez en ici ?",
                                          style: TextStyle(
                                              color: myPurple,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      onTap: () {},
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
