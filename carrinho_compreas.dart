import 'dart:io';

  List<String> produtos = [];
  bool condicao = true;
  int opc;

inserir(){
  print("Digite o nome do produtos que deseja inserir");
  String prod = stdin.readLineSync();
  produtos.add(prod);
  print("\x1B[2J\x1B[0;0H");
  print("PRODUTO INSERIDO COM SUCESSO!\n");
}

remover(){
  print("Qual item deseja remover?");
    imprimir();
    int item = int.parse(stdin.readLineSync());
    produtos.removeAt(item);
    print("ITEM REMOVIDO");
    print("\n");
}

imprimir(){
  for (var i = 0; i < produtos.length; i++) {
    print("ITEM $i - ${produtos[i]}");
  }
  print("\n");
}

main() {
  
  print("===== SEJA BEM-VINDO ====\n");
  print("===== ESCOLHA UMA DAS OPÇÕES =====\n");
  
  do {
    print(" 1-INSERIR PRODUTO\n 2-REMOVER PRODUTO\n 3-MOSTRAR PRODUTOS\n 0-SAIR");
    opc = int.parse(stdin.readLineSync());
    
    switch (opc) {
      case 1:
      {
        inserir();
      }break;
      case 2:
      {
        remover();
      }break;
      case 3:
      {
        imprimir();
      }break;
      default:
      {
        if(opc!=0){
          print("ENTRADA INVÁLIDA!\n");
        }else{
          opc = 0;
        }
      }  
    }
  } while (opc!=0);
  print("====== PROGRAMA FINALIZADO ======");
}

