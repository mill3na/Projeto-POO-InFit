class Usuario {

    String _nome = "Convidado";
    String _email = "";
    String _senha = "";
    double _altura = 0;
    double _peso = 0;
    int _idade = 0;
    bool _chave = false;

    Usuario();

    // ignore: unnecessary_getters_setters
    String get nome => _nome;
    // ignore: unnecessary_getters_setters
    String get email => _email;
    // ignore: unnecessary_getters_setters
    String get senha => _senha;
    // ignore: unnecessary_getters_setters
    double get altura => _altura;
    // ignore: unnecessary_getters_setters
    double get peso => _peso;
    // ignore: unnecessary_getters_setters
    int get idade => _idade;
    // ignore: unnecessary_getters_setters
    bool get chave => _chave;

    // ignore: unnecessary_getters_setters
    set nome(String nome) {
      _nome = nome;
    }
    // ignore: unnecessary_getters_setters
    set email(String email) {
      _email = email;
    }
    // ignore: unnecessary_getters_setters
    set senha(String senha) {
      _senha = senha;
    }
    // ignore: unnecessary_getters_setters
    set altura(double altura) {
      _altura = altura;
    }
    // ignore: unnecessary_getters_setters
    set peso(double peso) {
      _peso = peso;
    }
    // ignore: unnecessary_getters_setters
    set idade(int idade) {
      _idade = idade;
    }
    // ignore: unnecessary_getters_setters
    set chave(bool chave) {
      _chave = chave;
    }  
}