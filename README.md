# jogo_da_forca
Primeiro projeto feito em flutter. 
Jogo da forca que acentua as letras do usuario.

## Versão
### 1.0

### 1.01
O jogo estava com erro para mostra o pop up quando o usuario ganhava ou perdia.
Esse erro ocorria pois o codigo estáva chamando duas vezes o metodo de navegação. Uma vez no arquivo popup_model.dart e o outra vez por meio desse mesmo arquivo no metodo da route que o mesmo tinha. 

O pop up era chamado mas não ficava por tem suficente na tela para o usuario, a navegação era logo redirecionada para a pagina inicial.
