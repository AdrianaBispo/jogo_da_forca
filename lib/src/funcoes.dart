  bool dentro(var contem, var contido) {
    //verifica se a palavra tem a letra
    contem = contem.toString();
    contido = contido.toString();
    for (int of = 0; of < contem.length; of++) {
      for (int o = 0; o < contido.length; o++) {
        if (contido[o] == contem[of]) {
          return true;
        } //if
      } // for2
    } // for 1
    return false;
  } //dentro