# -Training-Room-GNU-Make-


![Stop, StudyArea](/home/fefeto/git/-Training-Room-GNU-Make-/Images/Github/Stop, StudyArea.png)

​	Esse repositorio tem como intuito o estudo 



Repository to train and consult makefile programs 



## Porque usar makefile

Eles podem ser uzados para compilar programas, instalar programas, construir bibliotecas compartilhadas e estaticas



## Rodando programas makefile

### Rodando programa sem parametros

```bash
~$ make
```

​	Esse comando será rodado em seu terminal bash e buscará o arquivo makefile em sua pasta de origem.



### Rodando programa com parametros

```bash
~$ make target
```

​	Esse comando será rodado em seu terminal bash e buscará o arquivo makefile em sua pasta de origem, rodando a partir do alvo solicitado.







## Modelo basico da linguagem





```makefile
Target:		Dependency(Optional)
			(...)
			Comand 1
			Comand 2
			(...)
```





```makefile
all:		
		@echo "Hello World"
```



```makefile
all:	mensage
		@echo "Hello World"

mensage:
		@echo "A new world"
```



```makefile
all:	mensage
		@echo "Hello World"

mensage:
		@echo "A new world"

mensage2:
		@echo "esse comando não irá rodar por não ser conectado com nenhum outro"
```

tags

-n : Mostra todos os comandos sem executar o programa (otimo para depuração)

-c <Arquivo>: Compilar o  arquivo

-o <Arquivo>: Direciona a saida para o arquivo selecionado

-J <Diretorio>: Direciona o .mod para o diretorio selecionado

-I <Diretorio>: Busca modulos em diretorio



Itens Especiais



@: Semper ao se usar um @ na frente de um comando, será executado um comando silencioso, onde o arquivo make não mostrará o comando que será realizado.

Execução do hello world sem @



Execução do hello world com @



Compilando programa

```makefile
Target:		Arquivo de Codigo fonte
			(...)
			Instruçao de compilação
			Comand 2
			(...)
```





Alvos arbitrarios

Para possuirmos uma padronização na escrita dos make files, podemos utilizar alguns alvos padrões para facilitar a leitura:

Alvo Clean

Quando existe esse alvo todos os arquivos escritos ali serão apagados ao final da execução do makefile





OBS: Esses alvos apenas tem como intuito padronizar o codigo, voce pode utilizar outros nomes de alvo se preferir

