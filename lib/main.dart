import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:blinking_text/blinking_text.dart';
import 'package:collection/collection.dart';
import 'fruta.dart';
import 'bebida.dart';
import 'cocktail.dart';

void main() {runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//BEGIN_ANIMATION
class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => ImagecontainerWidget()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(210, 255, 174, 1),
      child: Lottie.asset('assets/shakemeanimation.json'),
    );
  }
}
//FINAL_ANIMATION

//BEGIN_FIRST_ROUTER
class ImagecontainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Imagecontainer.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50),
              alignment: Alignment(0, 10),
              child: Image.asset("assets/logo_container.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 150),
              width: 300,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                ),
                boxShadow: [BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    offset: Offset(4, 4),
                    blurRadius: 6,
                    spreadRadius: 2.0
                )
                ],
                color: Color.fromRGBO(255, 253, 253, 0.35),
                border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    width: 1),
              ),
              child: Text(
                'Shake-me é seu app perfeito para sair daquela bad vibe e se animar com belos Drinks. Começamos?',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1),),
              padding: EdgeInsets.all(30),
            ),
            Container(
                margin: EdgeInsets.only(top: 50),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Positioned(
                          bottom: 50,
                          left: 0,
                          child:
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(197, 255, 68, 1),
                                onPrimary: Colors.white,
                                shadowColor: Colors.grey,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: Size(100, 40), //////// HERE
                              ),
                              onPressed: () {

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder:(context) => SegundaTela()),
                                );
                              },
                              child: Text('Começar!'))
                      ),
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
//FINAL_FIRST_ROUTER

//BEGIN_SECOND_ROUTER
class SegundaTela extends StatefulWidget{
  @override
  SegundaTelaState createState() => SegundaTelaState ();
}
class SegundaTelaState extends State<SegundaTela>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(210, 255, 174, 1),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              alignment: Alignment(0, 10),
              child: Image.asset("assets/logo_container.png"),
            ),
            Align(
              alignment: Alignment(-0.8,0),
              child: Container(
                child: Text('Ingredientes',
                  style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height:1),),
                padding: EdgeInsets.only(top: 30),
              ),
            ),
            Align(
              alignment: Alignment(-0.8,0),
              child: Container(
                child: Text('Escolha ingredientes disponiveis em casa e coloque-os dentro da coqueteleira. ShakeMe lhe oferecerá todas as possíveis combinações!',
                  style: TextStyle(color: Color.fromRGBO(111,111,111,1),
                  fontFamily: 'Roboto',
                  fontSize: 12,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height:1),),
                padding: EdgeInsets.all(20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              width: 200,
              height: 230,
              child: Image.asset("assets/K_container.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Positioned(
                              bottom: 50,
                              left: 20,
                              child:
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(197, 255, 68, 1),
                                    onPrimary: Colors.white,
                                    shadowColor: Colors.grey,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32.0)),
                                    minimumSize: Size(100, 40), //////// HERE
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder:(context) => QuartaTela()),
                                    );
                                  },
                                  child: Text('Bebidas'))
                          ),
                        ],
                      ),
                    )

                ),
                Container(

                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Positioned(
                              bottom: 50,
                              left: 0,
                              child:
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(197, 255, 68, 1),
                                    onPrimary: Colors.white,
                                    shadowColor: Colors.grey,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32.0)),
                                    minimumSize: Size(100, 40), //////// HERE
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder:(context) => TerceiraTela()),
                                    );
                                  },
                                  child: Text('Frutas'))
                          ),
                        ],
                      ),
                    )

                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
//FINAL_SECOND_ROUTER

//BEGIN_THIRD_ROUTER
class TerceiraTela extends StatefulWidget{
  @override
  TerceiraTelaState createState() => TerceiraTelaState();
}
class TerceiraTelaState extends State<TerceiraTela>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(210, 255, 174, 1),

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(210, 255, 174, 1),

        leading: Column(
          children: [
            Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(Icons.arrow_back),
                    tooltip: 'Reset?',
                    onPressed: () {
                      Navigator.pop(
                          context
                      );
                    },
                  );
                }
            ),
            Container(child: Text('Reset?',
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Roboto',
                  fontSize: 8,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1),),
            )
          ],
        ),

        /*leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(
                    context
                  );
                },
              );
            }
        ),*/

          /*leading: Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(Icons.arrow_back,
            //Icons.navigate_next,
            color: Colors.white,
            size: 25,
            )
          ),*/


        title: Container(
          margin: EdgeInsets.only(right: 30),
          alignment: Alignment(0, 0),
          child: Align(
            //alignment: Alignment.center,
            child: Image.asset("assets/logo_container.png"),
          ),
        ),
        actions: <Widget>[


          IconButton(
            icon: const Icon(CupertinoIcons.arrow_right),
            tooltip: 'Continuar?',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => QuartaTela()),
              );
            },

          /*Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(Icons.arrow_forward,
              //Icons.navigate_next,
              color: Colors.white,
              size: 25,
            )
          )*/

          )
        ],
      ),
      body: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 5, bottom: 10),
                width: 450,
                height: 80,
                //color: Colors.brown,
                //alignment: Alignment(0, 0),
                child: _FrutasImg(),
              ),
            Expanded(
              child: Container(
              margin: EdgeInsets.only(bottom: 20),
                width: 450,
                height: 100,
                child: FrutasDetails()
            )
            ),
          ],
        ),
      );
  }
}
//FINAL_THIRD_ROUTER


//BEGIN_FOURTH_ROUTER
class QuartaTela extends StatefulWidget{
  @override
  QuartaTelaState createState() => QuartaTelaState();
}
class QuartaTelaState extends State<QuartaTela>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(210, 255, 174, 1),

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(210, 255, 174, 1),
        leading: Column(
          children: [
            Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(Icons.arrow_back),
                    tooltip: 'Voltar?',
                    onPressed: () {
                      Navigator.pop(
                          context
                      );
                    },
                  );
                }
            ),
            Container(child: Text('Voltar?',
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Roboto',
              fontSize: 8,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
              height: 1),),
            )
          ],
        ),

          /*Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                tooltip: 'Voltar?',
                onPressed: () {
                  Navigator.pop(
                      context
                  );
                },
              );

            }
        ),*/

        /*leading: Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(Icons.arrow_back,
              //Icons.navigate_next,
              color: Colors.white,
              size: 25,
            )
        ),*/

        title: Container(
          margin: EdgeInsets.only(right: 30),
          alignment: Alignment(0, 0),
          child: Align(
            //alignment: Alignment.center,
            child: Image.asset("assets/logo_container.png"),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(CupertinoIcons.arrow_right),
            tooltip: 'Finalizar?',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => QuintaTela()),
              );
            },

            /*Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(Icons.arrow_forward,
              //Icons.navigate_next,
              color: Colors.white,
              size: 25,
            )
          )*/

          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 10),
            width: 450,
            height: 80,
            //color: Colors.brown,
            //alignment: Alignment(0, 0),
            child: _BebidasImg(),
          ),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: 450,
                  height: 100,
                  child: BebidasDetails()
              )
          ),

        ],
      ),

    );
  }
}
//FINAL_FOURTH_ROUTER


class Listapossivel{
  /*final List ListaFru = _FrutasDetailsState.listanossaFru;
  final List ListaBeb = _BebidasDetailsState.listanossaBeb;
  List get ListaFruListaBeb => this.ListaFru + this.ListaBeb;*/

  static var cocktailsPossiveis = const [];

  //the recommended way to compare lists for equality (rather than identity) is by using the Equality classes
  Function eq = const ListEquality().equals;

  //void checagem(List lista_ingredientes, List Cock_i, int i) {
  //Listapossivel(List lista_ingredientes, List Cock_i, int i) {
  List loquesea (List lista_ingredientes, List Cock_i, int i) {
    //Falta fazer o FOR aqui com i rodando em todos os cock
    if (eq(lista_ingredientes, Cock_i)){
      cocktailsPossiveis.add(cocktail[i]);
      //cocktailsPossiveis.add(cock[i]);
      return cocktailsPossiveis;
      //print(cocktailsPossiveis);
    }

  }
}

//BEGIN_FITH_ROUTER
class QuintaTela extends StatelessWidget{

  //final List ListaFru = _FrutasDetailsState.listanossaFru;
  //final List ListaBeb = _BebidasDetailsState.listanossaBeb;
  //List get ListaFruListaBeb => this.ListaFru + this.ListaBeb;

  static final ListaBeb = _BebidasDetailsState.listanossaBeb;
  static final ListaFru = _FrutasDetailsState.listanossaFru;
  //final ListaFruListaBeb = ListaFru + ListaBeb;
  //List get ListaFruListaBeb => this.ListaFru + this.ListaBeb;
  static List get ListaFruListaBeb => ListaFru + ListaBeb;

//  final List ListaFinal = ListaFruListaBeb;

  //O objeto mierda é uma instancia de Listapossivel
  //static var mierda = new Listapossivel(ListaFruListaBeb, AppleGinger, 0);//ESTOY AQUI
  var mierda = new Listapossivel().loquesea(ListaFruListaBeb, AppleGinger, 0);//ESTOY AQUI
  //var mierda = new Listapossivel().checagem(BananaDaiquiri, AppleGinger, 0);//ESTOY AQUI
  //var mierda = new Listapossivel(BananaDaiquiri, AppleGinger, 0);//ESTOY AQUI
  //var mierda = new Listapossivel(_FrutasDetailsState.listanossaFru + _BebidasDetailsState.listanossaBeb, AppleGinger, 0);//ESTOY AQUI
  //var mierda = Listapossivel(ListaFru + ListaBeb, AppleGinger, 0);//ESTOY AQUI

  //QuintaTela(){print(ListaFinal);}
  QuintaTela(){print(cocktail[0]);}
  //QuintaTela(){print(ListaFruListaBeb);}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(210, 255, 174, 1),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              alignment: Alignment(0, 10),
              child: Image.asset("assets/logo_container.png"),
            ),
            Align(
              alignment: Alignment(-0.8,0),
              child: Container(
                //child: Text('Ingredientes: $Lista',
                //child: Text(eq(Lista, VodkaLemonade),
                child: Text('Ingredientes: $mierda',
                //child: Text('Ingredientes: ${Listapossivel(ListaFruListaBeb, AppleGinger, 0)}',
                //child: Text('Ingredientes: $ListaFru',
                  style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height:1),),
                padding: EdgeInsets.only(top: 30),
              ),
            ),

            /*
            ListView.builder(scrollDirection: Axis.horizontal,
                itemCount: cocktail.length,
                itemBuilder: (context, index){
                  final CocktailsPossiveis = CocktailsPossiveis[index];
                  return _BebidasItem(bebida: bebida);//Definir uma clase _CocktailItem
                },
            ),
            */

          ],
        ),
      ),
    );
  }
}
//FINAL_FITH_ROUTER


/*
//BEGIN_FITH_ROUTER
class QuintaTela extends StatelessWidget{
  //final List listanossa;
  //const QuintaTela({Key key, this.listanossa}):super(key:key);

  QuintaTela({@required this.listanossa});
  final listanossa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(210, 255, 174, 1),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              alignment: Alignment(0, 10),
              child: Image.asset("assets/logo_container.png"),
            ),
            Align(
              alignment: Alignment(-0.8,0),
              child: Container(
                //child: Text('Ingredientes',
                child: Text('Ingredientes: $listanossa',
                  style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height:1),),
                padding: EdgeInsets.only(top: 30),
              ),
            ),
            Align(
              alignment: Alignment(-0.8,0),
              */
/*child: Container(
                child: Text('Escolha ingredientes disponiveis em casa e coloque-os dentro da coqueteleira. ShakeMe lhe oferecerá todas as possíveis combinações!',
                  style: TextStyle(color: Color.fromRGBO(111,111,111,1),
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height:1),),
                padding: EdgeInsets.all(20),
              ),*//*

            ),

*/
/*            Container(
              margin: EdgeInsets.only(top: 5),
              width: 200,
              height: 230,
              child: Image.asset("assets/K_container.png"),
            ),*//*


            */
/*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Positioned(
                              bottom: 50,
                              left: 20,
                              child:
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(197, 255, 68, 1),
                                    onPrimary: Colors.white,
                                    shadowColor: Colors.grey,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32.0)),
                                    minimumSize: Size(100, 40), //////// HERE
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder:(context) => QuartaTela()),
                                    );
                                  },
                                  child: Text('Bebidas'))
                          ),
                        ],
                      ),
                    )

                ),
                Container(

                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Positioned(
                              bottom: 50,
                              left: 0,
                              child:
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(197, 255, 68, 1),
                                    onPrimary: Colors.white,
                                    shadowColor: Colors.grey,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32.0)),
                                    minimumSize: Size(100, 40), //////// HERE
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder:(context) => TerceiraTela()),
                                    );
                                  },
                                  child: Text('Frutas'))
                          ),
                        ],
                      ),
                    )

                ),
              ],
            ),*//*


          ],
        ),
      ),
    );
  }
}
//FINAL_FITH_ROUTER
*/


/*class ListanossaBeb extends StatelessWidget{
  final List listanossaBeb;

  ListanossaBeb(this.listanossaBeb);//Aqui o construtor, usado para inicializar listanossaBeb

  @override
  Widget build(BuildContext context){
    return Container(
      child: Text('$listanossaBeb')
    );
  }
}*/


//BEGIN_EFFECTS_THIRD_ROUTER
class FrutasDetails extends StatefulWidget {
  @override
  _FrutasDetailsState createState() => _FrutasDetailsState();
}
funci (String path) {
  String pathSemPng = (path.split('.png')..removeLast()).join();
  String frutaStr = pathSemPng.replaceAll("assets/frutas/", "");
  return frutaStr;
}
class _FrutasDetailsState extends State<FrutasDetails>{
  static var listanossaFru = [];
  var _listFrutas = <Fruta>[];
  String frutaNova;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: DragTarget<Fruta>(
            onAccept: (fruta){
              print("accept");
              frutaNova = funci(fruta.image);
              listanossaFru.add(frutaNova);//guarda cada fruta na lista, depois de remover o path
              print(listanossaFru);
              print(fruta.image);
              print(frutaNova);
              print(_listFrutas);
            },

            onWillAccept: (fruta){
              print("onwillAccept");

              for(Fruta i in _listFrutas){
                if (i.compare(fruta)){
                  return false;
                }
              }
              _listFrutas.add(fruta);
              return true;
            },

            onLeave: (fruta){
              print("onleave");
            },
            builder: (context, list, rejects){
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 0, bottom: 320),
                      child: BlinkText(
                        "Arraste os ingredientes que tiver em casa até a coqueteleira!",
                        //beginColor: Colors.white,
                        //endColor: Colors.black,
                        style: TextStyle(fontSize: 10, color: Colors.black),
                        duration: Duration(milliseconds: 1500),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 100),
                    width: 450,
                    height: 450,
                    child: Image.asset("assets/K_container.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 280, bottom: 0),
                    //alignment: Alignment.center,
                    width: 430,
                    height: 60,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Image.asset("assets/images/Rectangle 11.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 280, bottom: 0),
                    child:Text(
                      '$listanossaFru',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Roboto',
                          fontSize: 10,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
//FINAL_EFFECTS_THIRD_ROUTER


/*

//BEGIN_EFFECTS_THIRD_ROUTER
class FrutasDetails extends StatefulWidget {
  @override
  _FrutasDetailsState createState() => _FrutasDetailsState();
}
funci (String path) {
  String pathSemPng = (path.split('.png')..removeLast()).join();
  String frutaStr = pathSemPng.replaceAll("assets/frutas/", "");
  return frutaStr;
}
class _FrutasDetailsState extends State<FrutasDetails>{
  var listanossaFru = [];
  var _listFrutas = <Fruta>[];
  String frutaNova;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: DragTarget<Fruta>(
            onAccept: (fruta){
              print("accept");
              frutaNova = funci(fruta.image);
              listanossaFru.add(frutaNova);//guarda cada fruta na lista, depois de remover o path
              print(listanossaFru);
              print(fruta.image);
              print(frutaNova);
              print(_listFrutas);
              //Navigator.push(context, MaterialPageRoute(builder: (context) => QuintaTela(listanossa: listanossaFru)));

            },

            onWillAccept: (fruta){
              print("onwillAccept");

              for(Fruta i in _listFrutas){
                if (i.compare(fruta)){
                  return false;
                }
              }
              _listFrutas.add(fruta);
              return true;
            },

            onLeave: (fruta){
              print("onleave");
            },
            builder: (context, list, rejects){
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 0, bottom: 320),
                      child: BlinkText(
                        "Arraste os ingredientes que tiver em casa até a coqueteleira!",
                        //beginColor: Colors.white,
                        //endColor: Colors.black,
                        style: TextStyle(fontSize: 10, color: Colors.black),
                        duration: Duration(milliseconds: 1500),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 100),
                    width: 450,
                    height: 450,
                    child: Image.asset("assets/K_container.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 280, bottom: 0),
                    //alignment: Alignment.center,
                    width: 430,
                    height: 60,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Image.asset("assets/images/Rectangle 11.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 280, bottom: 0),
                    child:Text(
                        '$listanossaFru',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Roboto',
                            fontSize: 10,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
//FINAL_EFFECTS_THIRD_ROUTER
*/


//BEGIN_IMAGENS_BOLOTAS_FRUTAS
class _FrutasImg extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: frutas.length,
      itemBuilder: (context, index){
        final fruta = frutas[index];
        return _FrutasItem(fruta: fruta);
        },
    );
  }
}
//FINAL_IMAGENS_BOLOTAS_FRUTAS

//BEGIN_IMAGENS_FRUTAS
class _FrutasItem extends StatelessWidget{
  const _FrutasItem({Key key, this.fruta}): super(key: key);
  final Fruta fruta;

  @override
  Widget build(BuildContext context){
    final child = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.15),
                offset: Offset(4, 4),
                blurRadius: 6,
                spreadRadius: 2.0
            )
            ]
        ),
          child: Image.asset(
            fruta.image,
            fit: BoxFit.contain,
          ),
        )
    );
    return Draggable(
      feedback: child,
      //axis: Axis.vertical,
      data: fruta,
      child: child,
    );
  }
}
//FINAL_IMAGENS_FRUTAS


//BEGIN_EFFECTS_FOURTH_ROUTER
class BebidasDetails extends StatefulWidget {
  @override
  _BebidasDetailsState createState() => _BebidasDetailsState();
}

//Reativar se der errado
funci2 (String path) {
  String pathSemPng = (path.split('.png')..removeLast()).join();
  String bebidaStr = pathSemPng.replaceAll("assets/bebidas/", "");
  return bebidaStr;
}


class _BebidasDetailsState extends State<BebidasDetails>{
  static var listanossaBeb = [];
  var _listBebidas = <Bebida>[];
  String bebidaNova;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: DragTarget<Bebida>(

            onAccept: (bebida){
              print("accept");
              bebidaNova = funci2(bebida.image);
              listanossaBeb.add(bebidaNova);//guarda cada fruta na lista, depois de remover o path
              print(listanossaBeb);
              print(bebida.image);
              print(bebidaNova);
            },

            onWillAccept: (bebida){
              print("onwillAccept");

              for(Bebida i in _listBebidas){
                if (i.compare(bebida)){
                  return false;
                }
              }
              _listBebidas.add(bebida);
              return true;

            },

            onLeave: (bebida){
              print("onleave");
            },
            builder: (context, list, rejects){
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 0, bottom: 320),
                      child: BlinkText(
                        "Arraste os ingredientes que tiver em casa até a coqueteleira!",
                        //beginColor: Colors.white,
                        //endColor: Colors.black,
                        style: TextStyle(fontSize: 10, color: Colors.black),
                        duration: Duration(milliseconds: 1500),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 100),
                    width: 450,
                    height: 450,
                    child: Image.asset("assets/K_container.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 280, bottom: 0),
                    //alignment: Alignment.center,
                    width: 430,
                    height: 60,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Image.asset("assets/images/Rectangle 11.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 280, bottom: 0),
                    child:Text(
                      '$listanossaBeb',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Roboto',
                          fontSize: 10,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
//FINAL_EFFECTS_FOURTH_ROUTER


//BEGIN_IMAGENS_BOLOTAS_BEBIDAS
class _BebidasImg extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: bebidas.length,
      itemBuilder: (context, index){
        final bebida = bebidas[index];
        return _BebidasItem(bebida: bebida);
      },
    );
  }
}
//FINAL_IMAGENS_BOLOTAS_BEBIDAS


//BEGIN_IMAGENS_BEBIDAS
class _BebidasItem extends StatelessWidget{
  const _BebidasItem({Key key, this.bebida}): super(key: key);
  final Bebida bebida;

  @override
  Widget build(BuildContext context){
    final child = Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  offset: Offset(4, 4),
                  blurRadius: 6,
                  spreadRadius: 2.0
              )
              ]
          ),
          child: Image.asset(
            bebida.image,
            fit: BoxFit.contain,
          ),
        )
    );
    return Draggable(
      feedback: child,
      //axis: Axis.vertical,
      data: bebida,
      child: child,
    );
  }
}
//FINAL_IMAGENS_FRUTAS



