programa
{
	inclua biblioteca Texto
	inclua biblioteca Util

	inteiro acao_escolhida
	cadeia clientes[9]
	cadeia destinos[9]
	inteiro nmrclientes =0
	inteiro nmrdestinos =0


	
//Tela de início para o usuário escolher o que irá fazer
	funcao inicio(){
		escreva("Bem-vindo(a) a GoViagens\n")
		escreva("============MENU============\n")
		escreva("O que gostaria de fazer?\n")
		escreva("[1] Registrar cliente\n")
		escreva("[2] Registrar destino\n")
		escreva("[3] Consultar cliente registrado\n")
		escreva("[4] Consultar destino registrado\n")
		leia(acao_escolhida)
		resposta(acao_escolhida)
	}
	
//Com base na resposta da tela de início, o usuário será mandado para a determinada tela
	funcao resposta(inteiro acao){
		se (acao_escolhida==1){
			registro_cliente()
		}
		senao se (acao_escolhida==2){
			registro_destino()
		}
		senao se(acao_escolhida==3){
			listar_clientes()
		}
		senao se(acao_escolhida==4){
			listar_destinos()
		}
	}
//TELA DE REGISTRO CLIENTE
	funcao registro_cliente(){
	cadeia nome
	cadeia cpf
	cadeia cep
	escreva("===CADASTRO DE CLIENTE===\n")
	escreva("QUAL O SEU NOME?\n")
	leia(nome)
	escreva("QUAL O SEU CPF?\n")
	leia(cpf)
	escreva("QUAL O CEP DO SEU ENDEREÇO?\n")
	leia(cep)

	inicio()
	}

//REGISTRO DESTINO
	funcao registro_destino(){
	cadeia pais
	cadeia estado
	cadeia cidade
	escreva("=========================\n")
	escreva("===CADASTRO DE DESTINO===\n")
	escreva("=========================\n")
	escreva("Qual o PAÍS\n")
	leia(pais)
	escreva("Qual o ESTADO?\n")
	leia(estado)
	escreva("Qual a CIDADE?\n")
	leia(cidade)

	destinos[nmrdestinos] = pais
		destinos[nmrdestinos + 1] = estado
		destinos[nmrdestinos + 2] = cidade
	
		escreva("\nDESTINO " + Texto.caixa_alta(cidade) + " - " + Texto.caixa_alta(estado) + " CADASTRADO COM SUCESSO!\n")
		nmrdestinos = nmrdestinos + 3
		inicio()
	}

//CONSULTAR DESTINO REGISTRADO
	funcao listar_destinos(){
		inteiro nmrdestinos = Util.numero_elementos(destinos)
		inteiro i = 0
		escreva("\n===LISTA DE DESTINOS CADASTRADOS===\n")
		enquanto(i < nmrdestinos){
			escreva("\n--------------------------------------\n")
			escreva("\nPAÍS: " + destinos[i])
			escreva("\nESTADO: " + destinos[i+1])
			escreva("\nCIDADE: " + destinos[i+2])

			i = i + 3
		}
		inicio()
	}
//CONSULTAR CLIENTES REGISTRADOS
	funcao listar_clientes(){
		inteiro qtd_clientes = Util.numero_elementos(clientes)
		inteiro i = 0
		escreva("\n===LISTA DE CLIENTES CADASTRADOS===\n")
		
		enquanto(i < nmrclientes){
			escreva("\n--------------------------------------\n")
			escreva("\nNOME: " +clientes[i])
			escreva("\nCPF: " + clientes[i+1])
			escreva("\nENDEREÇO: " + clientes[i+2])
	
			i = i + 3
		}
		inicio()
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1232; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */