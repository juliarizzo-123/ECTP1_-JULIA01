import utils
import strutils
import strformat

var 
  x = "1"
  y = "1"

while x != "5":
  
  menu()
  var x = readline(stdin)

  case x
  of "1": adicionaFornecedor()
  of "2": adicionaCliente()
  of "3": adicionaProduto()
  of "4": subMenu()
  of "5": echo "ate a proxima!!!!!"
  else: echo "Opção inválida"

  var y = readline(stdin) 
  case y
    of "1": listaFornecedores() 
    of "2": listaClientes()
    of "3": listaProdutos()
    of "4": echo "<<<<<<<<<"
    of "5": 
      echo "Opção inválida!, tente novamente"
      echo "Até a próxima"
