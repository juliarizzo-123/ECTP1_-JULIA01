import objs

import strutils
import strformat

var 
  fornecedores:seq[Fornecedor]
  clientes:seq[Cliente]
  produtos:seq[Produto]
  

proc linha() =
  echo "==========================================================================="


proc menu*() = 
  linha()
  echo """
  ADMIN - V1 - SEU JOAQUIM
  [1] - CADASTRAR FORNECEDOR
  [2] - CADASTRAR CLIENTE
  [3] - CADASTRAR PRODUTO
  [4] - LISTAR
  [5] - SAIR
	"""
  linha()

proc subMenu*() = 
  linha()
  echo """
      ADMIN - SUBMENU
      [1] - LISTAR FORNECEDORES
      [2] - LISTAR CLIENTES
      [3] - LISTAR PRODUTOS
      [4] - VOLTAR AO MENU ANTERIOR
	  """
  linha()

proc adicionaFornecedor*() = 
  var fornecedor = Fornecedor()
  linha()
  echo "CADASTRO FORNECEDOR"

  echo "CNPJ:"
  fornecedor.cnpj = readLine(stdin)

  echo "nome fantasia: "
  fornecedor.nomeFantasia = readLine(stdin)
  
  echo "endereco: "
  fornecedor.endereco = readLine(stdin)
  
  echo "cnae: "
  fornecedor.cnae = readLine(stdin)

  fornecedores.add(fornecedor)
  echo "Fornecedor cadastrado com sucesso!!"
  linha()

proc adicionaCliente*() = 
  var cliente:Cliente = Cliente()
  linha()
  echo "CADASTRO CLIENTE"
  echo "CATEGORIA:"
  cliente.categoria = readLine(stdin)
  clientes.add(cliente)
  echo "Cliente cadastrado com sucesso!!"
  linha()

proc adicionaProduto*() = 
  var produto:Produto = Produto()
  linha()
  echo "CADASTRO PRODUTO"
  echo "Codigo:"
  produto.codigo = readLine(stdin)
  echo "Descricao:"
  produto.descricao = readLine(stdin)
  echo "Valor"
  produto.valor = readLine(stdin)
  produtos.add(produto)
  echo "Produto cadastrado com sucesso!!"
  linha()

proc listaFornecedores*() =
  for fornecedor in fornecedores :
    linha()
    echo "Nome do fornecedor: " & fornecedor.nomeFantasia
    echo "CNPJ do Fornecedor: " & fornecedor.cnpj
    echo "Endereço do Fornecedor: " & fornecedor.endereco
    linha()

proc listaClientes*() =
    linha()
    for cliente in clientes :
      echo "Nome do Cliente: " & cliente.nomeFantasia
      echo "CNPJ do Cliente: " & cliente.cnpj
      echo "Endereço do Fornecedor: " & cliente.endereco
      echo "Categoria do Cliente: " & cliente.categoria
    linha()

proc listaProdutos*() =

    linha()
    for produto in produtos:
      echo produto.codigo
      echo produto.valor
      echo produto.descricao
    linha()
