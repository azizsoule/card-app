class Validators {

  static String notEmpty(String value) {
    if (value.trim().isEmpty) {
      return "Veuillez renseigner ce champ !";
    }

    return null;
  }



}