class ListaEscolhida {

  static final ListaEscolhida _instance = ListaEscolhida._internal();

  // passes the instantiation to the _instance object
  factory ListaEscolhida() => _instance;

  //initialize variables in here
  ListaEscolhida._internal() {
    _path = '';
  }

  String _path;

  //short getter for my variable
  String get path => _path;

  //short setter for my variable
  set path(String value) => path = value;

  //void incrementMyVariable() => _myVariable++;
    funci (String path) {
      String pathSemPng = (path.split('.png')
        ..removeLast()).join();
      String frutaStr = pathSemPng.replaceAll("assets/frutas/", "");
      return frutaStr;
    }
}
