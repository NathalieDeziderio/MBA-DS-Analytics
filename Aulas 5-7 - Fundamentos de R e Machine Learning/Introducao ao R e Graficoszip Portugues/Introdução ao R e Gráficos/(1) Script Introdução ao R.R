# Introdu��o ao Software R
# MBA DSA USP ESALQ
# Prof. Wilson Tarantin Junior

#------------------- Apresenta��o do R e RStudio -------------------------------

# R � a linguagem de programa��o que vamos utilizar
# RStudio � um software que torna a utiliza��o do R mais simples para o usu�rio

# A interface do RStudio divide-se em 4 grandes partes, principalmente para:

# 1� Parte: script com o hist�rico de c�digos daquele projeto ou an�lise
# 2� Parte: console onde os c�digos podem ser digitados e s�o implementados
# 3� Parte: environment onde ficam listados os objetos
# 4� Parte: onde aparecem outputs, help de pacotes, arquivos da pasta atual

# Sempre que iniciar uma nova an�lise, sugere-se criar um "project"

# File -> New Project -> New Directory -> New Project -> Nome do Projeto

# O project cria uma pasta, o que facilita a organiza��o e o compartilhamento
# Tamb�m ajuda na importa��o de dados no RStudio

#------------------- Estrutura b�sica de opera��o do R -------------------------

# Normalmente, utiliza-se um script para guardar o hist�rico das an�lises

# File -> New File -> R Script

# Vamos conhecer as opera��es fundamentais do R

1 + 1
10 - 2
25 * 2
100 / 10
3 ^ 2
sqrt(25)

# Para executar um comando do script, posicione o cursor e clique "ctrl+enter"
# Tamb�m � poss�vel digitar os comandos diretamente no console

# O R possui uma linguagem b�sica, muitas vezes chamada de R Base (Base R)
# Entretanto, os desenvolvimentos ocorrem por meio de "pacotes"
# Tais pacotes precisam ser instalados antes do uso, por exemplo:

install.packages("tidyverse")

# O comando acima, install.packages(), instalou o pacote "tidyverse"
# Assim � feito com pacotes que ser�o utilizados, mas ainda n�o foram instalados

# Quando for utilizar o pacote, � necess�rio carreg�-lo com a fun��o library()

library(tidyverse)

# Ap�s rodar este comando, as fun��ees do tidyverse j� podem ser utilizadas

# Um par�ntese: perceba que os textos, neste script, se iniciam com #
# Os c�digos s�o digitados diretamente e s�o identificados como comandos
# Se digitarmos os textos diretamente, o R identificar� um erro
# Da mesma forma, se um comando estiver incorreto, um erro aparecer�

# O R funciona com base em objetos que ficam listados no environment

# Vamos conhecer os objetos iniciando pelos vetores
# Os vetores mais simples s�o os at�micos (num�ricos; caracteres; l�gicos)

numeros <- c(1, 2, 3, 4, 5)

# Acima, criamos um objeto chamado "numeros" que � um vetor num�rico
# Para criar o "numeros", utilizamos o indicador <- para atribuir os valores
# O atalho para gerar a atribui��o � "alt -" juntos
# A fun��o c() indica que estamos concatenando (combinando) valores em um vetor

# Neste momento, � importante entendermos o objetivo das fun��ees
# As fun��ees indicam a a��o que deve executada pelo R
# No caso acima: pedimos que o R combinasse - c() - os n�meros em um vetor
# Portanto, as fun��ees s�o algoritmos que executam uma a��o pr�-estabelecida
# Um aspecto comum � que muitas fun��ees demandam mais de um argumento

# Uma ferramenta de ajuda importante � o Help do RStudio
# Coloque o cursor sobre uma fun��o e aperte F1: surge o Help daquela fun��o
# O Help � relevante, pois mostra a documenta��o da fun��o (e seus argumentos)

# Ao escrever o nome do objeto no console (ou no script), o objeto � "printado"

numeros

# Os comandos s�o "case sensitive", isto �, diferenciam mai�sculas e min�sculas 

Numeros # note que houve um erro, n�o existe o objeto Numeros (mai�scula)

# Tamb�m n�o s�o aceitos caracteres especiais no nome de objetos
# Uma dica � n�o complicar no nome dos objetos (evitar mai�sculas, acentos...)
# Outra � n�o utilizar nomes muito parecidos com nomes de fun��ees j� existentes

# Seguindo com as fun��ees, poder�amos utilizar o comando print()

print(numeros)

# Vamos criar um vetor com textos, isto �, com caracteres:

pessoas <- c("Jo�o", "Maria", "Pedro", "Paula")

# Agora, foi criado um vetor de textos que foram colocados entre aspas duplas

pessoas

# Tamb�m poder�amos criar um vetor com argumentos l�gicos, TRUE ou FALSE

logico <- c(TRUE, FALSE, TRUE, TRUE, FALSE, FALSE)

# Igualmente v�lido:

logico_2 <- c(T, F, T, T, F, F)

# Note que tais argumentos n�o s�o textos, est�o definidos como l�gicos
# Para saber a classe de vetor, � poss�vel utilizar:

class(numeros)
class(pessoas)
class(logico)

# Para saber o comprimento do vetor, � poss�vel utilizar:

length(numeros)
length(pessoas)
length(logico)

# Cada objeto tem seu nome e n�o h� nomes iguais no ambiente

sequencia <- c(1:10) # esta � uma forma de gerar uma sequ�ncia de n�meros

# Se atribuir o mesmo nome a outro objeto, o objeto antigo � substitu�do

sequencia <- c(500:600)

# Existem vetores que guardam informa��ees de variadas classes:

varios_1 <- c(1, 2, 3, "Azul", "Verde", "Vermelho", TRUE, FALSE, TRUE)

class(varios_1)
print(varios_1)

# O R atribui a classe "caracteres" a este vetor, ou seja, tornaram-se textos
# Isto ocorre, pois a prioridade estabelecida pelo R � a seguinte:
# 1� Textos, 2� N�meros, 3� Argumentos l�gicos

varios_2 <- c(425, 426, 427, TRUE, FALSE, FALSE)

class(varios_2)
print(varios_2)

# Agora, como h� somente n�meros e l�gicos, o R transforma TRUE = 1 e FALSE = 0
# Tais procedimentos s�o chamados de coer��o

# � poss�vel realizar opera��ees com os vetores. A seguir, alguns exemplos:
# Observe os operadores comumente utilizados na linguagem R

numeros == 1
numeros * 2
triplo_numeros <- numeros * 3
metade_numeros <- numeros / 2

pessoas != "Jo�o"

sequencia > 550
sequencia >= 598
sequencia > 100
sequencia <= 100

# H� outros tipos de vetores, agora vamos conhecer os fatores:

# Fatores: cont�m vari�veis categ�ricas com os poss�veis valores estipulados
# A seguir, para criar um fator, vamos utilizar o c() dentro da fun��o factor()
# A fun��o factor() tem dois argumentos adicionais: levels e labels

altura <- factor(c("alto", "m�dio", "alto", "baixo", "m�dio", "alto"), 
                levels = c("baixo", "m�dio", "alto"),
                labels = c("pr�dios baixos",
                           "pr�dios m�dios",
                           "pr�dios altos"))

class(altura)

altura

# No caso dos fatores, a vari�vel, inclusive, pode estar indicada como num�rica

respostas <- factor(c(1, 2, 2, 3, 1, 2, 3, 3, 1, 2, 1, 1, 3, 2, 3),
                    levels = c(1, 2, 3),
                    labels = c("discordo totalmente",
                               "n�o concordo, nem discordo",
                               "concordo totalmente"))

class(respostas)

respostas

# Note que a sequ�ncia de levels e labels � a correta, isto �, mant�m a ordem

# Outro tipo de objeto bastante relevante na an�lise de dados s�o os data frames

# Data frames: s�o os objetos que guardam informa��ees como nas bases de dados
# Assim, nos data frames est�o colunas (vari�veis) e linhas (observa��ees)

banco_dados_um <- data.frame(var1 = c("pessoa 1", "pessoa 2", "pessoa 3"),
                             var2 = c(42, 55, 28))

print(banco_dados_um)

# Note que foi criado um objeto do tipo "Data" no ambiente do RStudio

# Na fun��o data.frame as vari�veis devem ter o mesmo comprimento
# Vamos adicionar 3 vetores para formar o dataset

variavel_um <- c(1:10)
variavel_dois <- c(11:18, NA, NA)
variavel_tres <- c("a","b","c","d","e","f","g","h","i","j")

banco_dados_dois <- data.frame(variavel_um, variavel_dois, variavel_tres)

# No caso acima foi adicionado um argumento relevante: NA
# O NA � a indica��o do dado "n�o dispon�vel", isto �, missing value
# Note que o NA n�o � texto

# Vamos criar o banco de dados com nomes diferentes para as vari�veis

banco_dados_tres <- data.frame(posicao = variavel_um,
                               faltam = variavel_dois,
                               letras = variavel_tres)

#------------------- Importando dados ------------------------------------------

# At� o momento, criamos internamente os objetos utilizados
# Agora, vamos importar um tipo de objeto fundamental, as bases de dados

# Inicialmente, vamos importar um arquivo da pr�pria extens�o do R (.RData)
# A seguir, temos dados relacionados ao desempenho escolar de 2.000 pessoas
# Fonte dos dados: F�vero & Belfiore (2017, Cap�tulo 16)

load("C:\\Users\\natha\\Downloads\\Introducao ao R e Graficoszip Portugues\\Introdu��o ao R e Gr�ficos\\(2) desempenho_aluno_escola.RData")

# Tamb�m podemos importar um arquivo em Excel (utilizando o readxl - tidyverse)
# A seguir, temos dados com a cota��o de fechamento mensal de 4 a��ees

library(readxl)
preco <- read_excel("C:\\Users\\natha\\Downloads\\Introducao ao R e Graficoszip Portugues\\Introdu��o ao R e Gr�ficos\\(2) precos_acao.xlsx")

# Outro formato bastante comum � o (.csv)
# A seguir, vamos importar dados do Banco Mundial sobre o crescimento do PIB
# Fonte dos dados: https://databank.worldbank.org/

pib_paises <- read.csv("C:\\Users\\natha\\Downloads\\Introducao ao R e Graficoszip Portugues\\Introdu��o ao R e Gr�ficos\\(2) pib_paises.csv",
                       sep = ",",
                       dec = ".")

# Os argumentos adicionados nesta fun��o foram:
# O separador (,) e a indica��o de decimais (.)

# Uma ferramenta interessante � a coleta dos dados diretamente nos links
# Cota��o do d�lar comercial (venda e compra) - cota��ees di�rias
# Fonte: Banco Central do Brasil

dolar <- read.csv("https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarPeriodo(dataInicial=@dataInicial,dataFinalCotacao=@dataFinalCotacao)?@dataInicial='01-01-2020'&@dataFinalCotacao='05-16-2023'&$top=10000&$format=text/csv&$select=cotacaoCompra,cotacaoVenda,dataHoraCotacao",
                  sep = ",")

# Os argumentos s�o: a indica��o do link e o separador das vari�veis (,)

# Por fim, note que o RStudio tamb�m auxilia na importa��o das bases de dados
# Em environment, clique no bot�o de "Importar"

# ATEN��O: se surgir uma caixa de di�logo para a instala��o do pacote, aceite
# Pode surgir na primeira vez que utiliza o assistente de importa��o

# Note que h� op��o para importar arquivos de outros softwares

# Por exemplo, vamos importar um arquivo do SPSS (.sav)
# Os dados cont�m as notas de 100 alunos em 4 disciplinas distintas
# Fonte dos dados: F�vero & Belfiore (2017, Cap�tulo 10)

#------------------- Salvando dados no R ---------------------------------------

# Se alterarmos as bases, podemos exportar os bancos de dados utilizados

# Salvando em .RData

save(banco_dados_um, file = "C:\\Users\\natha\\Downloads\\Introducao ao R e Graficoszip Portugues\\Introdu��o ao R e Gr�ficos\\(3) dados_salvos_1.RData")

# Salvando em Excel:

install.packages("writexl")
library("writexl")

write_xlsx(banco_dados_dois,"C:\\Users\\natha\\Downloads\\Introducao ao R e Graficoszip Portugues\\Introdu��o ao R e Gr�ficos\\(3) dados_salvos_2.xlsx")

# Salvando em .csv

write.csv(banco_dados_tres, file = "C:\\Users\\natha\\Downloads\\Introducao ao R e Graficoszip Portugues\\Introdu��o ao R e Gr�ficos\\(3) dados_salvos_3.csv", row.names = F)

#------------------- Conceitos b�sicos de manipula��o de dados -----------------

# A manipula��o dos dados consiste em organizar as vari�veis e observa��ees
# Na grande maioria dos casos, as bases de dados precisam ser preparadas

# Vamos utilizar como exemplo a base de dados de desempenho dos alunos

load("(2) desempenho_aluno_escola.RData") # Se j� estiver carregada, n�o precisa

View(desempenho_aluno_escola)

# Vamos olhar apenas a parte inicial do banco de dados (10 primeiras linhas)

head(desempenho_aluno_escola, n = 10)
# fct = factor = categ�rica
# dbl = double = n�mero

# Quais s�o os nomes das vari�veis dispon�veis?

names(desempenho_aluno_escola)

# Ao todo, quantas vari�veis e quantas observa��ees existem no banco de dados?

nrow(desempenho_aluno_escola) # observa��ees (linhas)
ncol(desempenho_aluno_escola) # vari�veis (colunas)
dim(desempenho_aluno_escola) # ambos juntos (linhas, colunas)

# Qual � a estrutura do banco de dados?

str(desempenho_aluno_escola)

# Em algumas fun��ees, certas vezes, pode ser necess�rio especificar uma vari�vel
# Indicaremos o nome_objeto_dados$vari�vel

desempenho_aluno_escola$desempenho # Somente o print da vari�vel

horas_estudo <- desempenho_aluno_escola$horas # Armazenando em um vetor

# Para remover um objeto do ambiente, pode ser feito da seguinte forma:

rm(horas_estudo)

# � poss�vel localizar informa��ees do banco de dados da seguinte forma:
# O primeiro argumento � o n�mero da linha e, ap�s a v�rgula, a posi��o da coluna 

# Qual � o valor do desempenho escolar (vari�vel na 3� coluna) do 1� aluno?
desempenho_aluno_escola[1 , 3]

# Quais s�o os valores de todas as vari�veis do 5� aluno?
desempenho_aluno_escola[5 , ]

# Quais s�o os valores de todas as vari�veis para os alunos de 7 a 12?
desempenho_aluno_escola[c(7:12), ]

# Quais s�o as observa��ees para a vari�vel da 6� coluna (tipo de escola?)?
desempenho_aluno_escola[ , 6]

# No caso acima, tamb�m poderia ser indicada pelo nome da vari�vel
desempenho_aluno_escola[ , "priv"]

# Poder�amos reorganizar a ordem das vari�veis
reorganiza = desempenho_aluno_escola[ , c(2,5,3,4,1,6)]

# Vamos armazenar somente as vari�veis estudante (id), desempenho e horas
parte_dados <- desempenho_aluno_escola[ , c("estudante", "desempenho", "horas")]

# As vari�veis "horas" e "tempo de experi�ncia" poderiam ser exclu�das
novos_dados_1 <- desempenho_aluno_escola[ , -c(4,5)]

# Supondo que n�o vamos analisar as linhas de 476 at� 522
novos_dados_2 <- desempenho_aluno_escola[ -c(476:522), ]

# Tamb�m � poss�vel filtrar observa��ees por meio dos operadores:
# Alguns operadores �teis para realizar filtros:

"== igual"
"> maior"
">= maior ou igual"
"< menor"
"<= menor ou igual"
"!= diferente"
"& indica e"
"| indica ou"

desempenho_aluno_escola[desempenho_aluno_escola$desempenho > 50,]

desempenho_aluno_escola[desempenho_aluno_escola$priv == "p�blica",]

desempenho_aluno_escola[desempenho_aluno_escola$priv == "p�blica" &
                        desempenho_aluno_escola$desempenho <= 20,]

desempenho_aluno_escola[desempenho_aluno_escola$escola != "A",]

seleciona_escolas <- desempenho_aluno_escola[desempenho_aluno_escola$escola == "C" |
                                             desempenho_aluno_escola$escola == "H",]

# A seguir, vamos trabalhar no banco de dados do PIB dos pa�ses

pib_paises <- read.csv("C:\\Users\\natha\\Downloads\\Introducao ao R e Graficoszip Portugues\\Introdu��o ao R e Gr�ficos\\(2) pib_paises.csv",
                       sep = ",",
                       dec = ".")

# Excluir vari�veis que n�o utilizaremos
# Ao mesmo tempo, vamos excluir as �ltimas linhas (267 at� 271)

pib_paises <- pib_paises[-c(267:271),-c(2,4)]

# Vamos alterar os nomes das vari�veis

nomes <- c("ano","paises_regioes","var_pib_capita","var_pib_total")
names(pib_paises) <- nomes

# Note que as vari�veis que devem ser num�ricas vieram como textos
# Vamos criar novas vari�veis contendo os valores

pib_paises$var_pib_capita_ajust <- as.numeric(pib_paises$var_pib_capita)
pib_paises$var_pib_total_ajust <- as.numeric(pib_paises$var_pib_total)

# Utilizamos, em conjunto, a fun��o "as.numeric"

# Um detalhe: note que apareceram "warnings" - este n�o � erro, � informa��o!

# Por fim, podemos gerar algumas estat�sticas descritivas das duas vari�veis

summary(pib_paises$var_pib_capita_ajust)
summary(pib_paises$var_pib_total_ajust)

#------------------- Fun��ees e itera��ees ---------------------------------------

# Refer�ncia: R for Data Science - (https://r4ds.had.co.nz/functions.html)

# Uma fun��o � uma forma de simplificar um c�digo
# � adequada sempre que for necess�rio repetir o mesmo c�digo v�rias vezes
# Ent�o, fun��ees automatizam tarefas que seriam repetitivas
# Permite que sejam criados e nomeados objetos contendo tais fun��ees

# Reduzir a duplicidade de c�digos � importante, pois:
# Facilita a visualiza��o (leitura do c�digo)
# Facilita a mudan�a do c�digo, caso necess�rio
# Evita erros durante a duplica��o do c�digo

# Para criar uma fun��o, existem tr�s etapas b�sicas:
# 1. Nomear a fun��o
# 2. Indicar os argumentos (inputs) da fun��o (ficam dentro de function(x, y))
# 3. Indicar o c�digo, a fun��o, que ser� implementado (fica dentro do {})

# Exemplo: todo dia atualizamos milhares de valores somando 17 e dividindo por 2
# Ao inv�s de repetir a mesma conta toda vez, poder�amos criar uma fun��o:

atualizar <- function(hist�rico) {
  atual <- ((hist�rico + 17)/2)
  return(atual)
}

# O input � o que nomeamos de "hist�rico", isto �, o valor que vamos atualizar
# O "atual" � o nome que demos ao c�digo que ser� implementado (a fun��o)
# O "return" � o que queremos que a fun��o retorne, isto �, o valor atualizado

atualizar(1)
atualizar(2)
atualizar(3)
atualizar(4)

# Ainda menos repetitivo, poder�amos criar um vetor com todos os valores
# Em seguida, o vetor entra como input na fun��o para retornar todos os valores

atualizar_hoje <- c(1:15)

atualizar(atualizar_hoje)

# Inclusive, poder�amos guardar os resultados em um objeto

atualizados <- atualizar(atualizar_hoje)

print(atualizados)

# Poder�amos ter uma fun��o com mais de um input. Por exemplo

ajustar <- function(valor1, valor2) {
  ajuste <- ((valor1 + 180)/(valor2 - 60))
  return(ajuste)
}

ajustar(100, 80)
ajustar(200, 80)
ajustar(200, 100)

# Neste contexto de fun��ees, as condi��ees "if, else if e else" s�o importantes
# Primeiramente, estabelecemos a condi��o entre par�nteses
# Entre as primeiras chaves, vamos estabelecer o resultado caso if = TRUE
# Na sequ�ncia, estabelecemos o else, ou seja, o restante caso if = FALSE

valor <- 100000

if (valor >= 1000000) {
  "n�mero grande"
} else {
  "n�mero pequeno"
}

# Tamb�m poder�amos ter m�ltiplos crit�rios utilizando o "else if"

valor <- 650000

if (valor >= 1000000) {
  "n�mero grande"
} else if (valor >= 500000 & valor <1000000) {
  "n�mero intermedi�rio"
} else {
  "n�mero pequeno"
}

# � poss�vel integrar condi��ees ("if") às fun��ees apresentadas anteriormente
# Voltando ao exemplo, vamos supor que atualizamos valores s� at� o limite 100
# Valores que seriam atualizados acima dele, ficam no limite estabelecido = 100

# Adicionamos o if (condi��o) {o que retornar quando for satisfeita}
# Na sequ�ncia, o else {o que retornar quando NÃO for satisfeita}

atualizar_teto <- function(hist�rico) {
  atual <- ((hist�rico + 17)/2)
  if (atual <= 100) {
    return(atual)}
  else {
    return("Atualizado no Teto = 100")}
}

atualizar_teto(44)
atualizar_teto(199)

# Do mesmo modo, � poss�vel adicionar m�ltiplas condi��ees às fun��ees ("else if")

ajustar_mult <- function(valor1, valor2) {
  ajuste <- ((valor1 + 180)/(valor2 - 60))
  if(ajuste <= 100) {
    return("baixo")}
  else if(ajuste > 100 & ajuste <= 1000) {
    return("m�dio")}
  else {
    return("alto")}   
}

ajustar_mult(500, 300) # resultado = 2,8333
ajustar_mult(50000,100) # resultado = 1.254,50
ajustar_mult(1000, 70) # resultado = 118

# Nos exemplos acima, criamos nossas fun��ees que utilizamos em cada c�digo 
# Por�m, tamb�m poder�amos utilizar fun��ees j� existentes
# Ou seja, o c�digo pode conter uma grande diversidade de fun��ees j� existentes

m�dias <- function(x) {
  media <- mean(x, na.rm = T)
  return(media)
}

valores <- c(1, 4, 6, 9, 12, 16)

m�dias(valores)

# A seguir, vamos analisar o funcionamento do "for()" e do "while()"

# Retomando o trabalho de atualizar valores diariamente, podemos usar o for()

for (i in atualizar_hoje) {
  print((i + 17)/2)
}

# Interpreta��o: para todo valor i que consta no vetor "atualizar_hoje"
# Fa�a o print do resultado (valor i + 17)/2

# Tamb�m poder�amos salvar os resultados em uma lista

resultados <- list()

for (i in atualizar_hoje) {
  resultados[[i]] <- ((i + 17)/2)
}

# Assim, em outro momento, poder�amos buscar um valor em particular da lista

resultados[[5]]

# Ou mesmo a lista toda

resultados

# O while() permite que seja adicionada uma condi��o do tipo "enquanto"

valores <- 2

while(valores < 100){
  valores <- (valores + 20)
  print(valores)
}

# Interpreta��o: enquanto o resultado de valores for menor do que 100, some 20

# A seguir, al�m de realizar o while(), os resultados s�o armazenados no vetor

novos_result <- c()

valores <- 2

while(valores < 100){
  valores <- (valores + 20)
  novos_result <- c(novos_result, valores)
  print(valores)
}

print(novos_result)

# Portanto, fun��ees e itera��ees s�o ferramentas que podem facilitar a escrita

#------------------- Data Visualization ----------------------------------------

# Para a visualiza��o de dados, vamos utilizar principalmente o pacote "ggplot2"

# O "ggplot2" � um pacote para a cria��o de gr�ficos integrante do tidyverse  
# (https://ggplot2.tidyverse.org/)
# O ggplot2 foi instalado ao instalar o tidyverse. Agora, basta carreg�-lo

library(ggplot2) # Obs.: se j� tiver carregado o tidyverse, n�o precisa faz�-lo

# Os c�digos para a cria��o dos mais diversos tipos de gr�ficos s�o semelhantes
# Em ess�ncia, muda-se a "geometria" do gr�fico -> geometria = tipo de gr�fico
# Muitos dos argumentos adicionais s�o ajustes e formata��ees
# Dada a necessidade da an�lise, escolhe-se o tipo de gr�fico e sua "geom"

# Al�m do ggplot2, a seguir, outros pacotes que podem ser �teis:

install.packages(c("plotly","reshape2","ggrepel","rgl","car","sf","esquisse"))

options(rgl.debug = TRUE)

library(plotly)
library(reshape2)
library(ggrepel)
library(rgl)
library(car)
library(sf)
library(esquisse)

# --- Gr�fico de Barras ---

# Vamos come�ar analisando uma vari�vel qualitativa, o perfil do investidor

load("C:\\Users\\natha\\Downloads\\Introducao ao R e Graficoszip Portugues\\Introdu��o ao R e Gr�ficos\\(2) perfil_investidor.RData")

# Como � uma vari�vel categ�rica, vamos criar um gr�fico de barras (geom_bar)
# Neste caso, o gr�fico apresentar� a contagem em cada categoria da vari�vel
# Note que no "aes" (aesthetics) entra como argumento a vari�vel de interesse

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil))

# Poder�amos mudar a ordem de apresenta��o reorganizando os n�veis da vari�vel

perfil_investidor$perfil <- factor(perfil_investidor$perfil,
                                   levels = c("Conservador", 
                                              "Moderado", 
                                              "Agressivo"))

# O novo gr�fico seria:

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil))

# Conforme indicado, muitos dos argumentos adicionais s�o ajustes e formata��ees
# Vamos adicionar novas legendas ao gr�fico

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil)) +
  labs(title = "Perfil dos Investidores",
       subtitle = "Banco X",
       x = "Perfil do Investidor",
       y = "Quantidade",
       caption = "Per�odo: 2020")

# Vamos alterar a cor das barras (argumento "fill")

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil), fill = "blue") +
  labs(title = "Perfil dos Investidores",
       subtitle = "Banco X",
       x = "Perfil do Investidor",
       y = "Quantidade",
       caption = "Per�odo: 2020")

# As poss�veis cores dispon�veis na linguagem base podem ser consultadas

colours()

# Vamos adicionar bordas às barras (argumento "color")

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil), color = "red", fill = "blue") +
  labs(title = "Perfil dos Investidores",
       subtitle = "Banco X",
       x = "Perfil do Investidor",
       y = "Quantidade",
       caption = "Per�odo: 2020")

# Vamos alterar o fundo do gr�fico (theme)

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil), color = "red", fill = "blue") +
  labs(title = "Perfil dos Investidores",
       subtitle = "Banco X",
       x = "Perfil do Investidor",
       y = "Quantidade",
       caption = "Per�odo: 2020") +
  theme_light()

# Um aspecto importante � que podemos adicionar mais de uma geometria ao gr�fico
# Vamos adicionar um texto (geom_text) contendo os valores que foram contados

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil), color = "red", fill = "blue") +
  geom_text(aes(x = perfil, label = ..count..), stat = "count", vjust = 2) +
  labs(title = "Perfil dos Investidores",
       subtitle = "Banco X",
       x = "Perfil do Investidor",
       y = "Quantidade",
       caption = "Per�odo: 2020") +
  theme_light()

# Tamb�m poder�amos apresentar o gr�fico com os eixos invertidos

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil), color = "red", fill = "blue") +
  geom_text(aes(x = perfil, label = ..count..), stat = "count", hjust = -1) +
  labs(title = "Perfil dos Investidores",
       subtitle = "Banco X",
       x = "Perfil do Investidor",
       y = "Quantidade",
       caption = "Per�odo: 2020") +
  coord_flip() +
  theme_light()

# --- Histograma ---

# A seguir, vamos elaborar o histograma de notas dos alunos (desempenho escolar)
# O banco de dados � o mesmo que j� utilizamos anteriormente

load("C:\\Users\\natha\\Downloads\\Introducao ao R e Graficoszip Portugues\\Introdu��o ao R e Gr�ficos\\(2) desempenho_aluno_escola.RData")

# Iniciando com o gr�fico b�sico (geom_histogram)

ggplot(data = desempenho_aluno_escola) +
  geom_histogram(aes(x = desempenho))

# Vamos adicionar algumas formata��ees

ggplot(data = desempenho_aluno_escola) +
  geom_histogram(aes(x = desempenho), color = "black", fill = "light green") +
  labs(x = "Desempenho Escolar",
       y = "Frequ�ncia") +
  theme_bw()

# Algumas vezes pode ser importante formatar a quantidade de barras apresentadas

ggplot(data = desempenho_aluno_escola) +
  geom_histogram(aes(x = desempenho), color = "black", fill = "light green", bins = 50) +
  labs(x = "Desempenho Escolar",
       y = "Frequ�ncia") +
  theme_bw()

# --- Gr�fico de Pontos ---

# Na sequ�ncia, vamos elaborar um gr�fico de dispers�o dos pontos
# Os dados s�o do atlas ambiental sobre distritos da cidade de S�o Paulo

load("C:\\Users\\natha\\Downloads\\Introducao ao R e Graficoszip Portugues\\Introdu��o ao R e Gr�ficos\\(2) atlas_ambiental.RData")

# Iniciando com o gr�fico b�sico (geom_point)
# Neste caso, devemos especificar as vari�veis dos eixos x e y no "aes"

ggplot(atlas_ambiental) +
  geom_point(aes(x = renda, y = escolaridade))

# Como h� vari�veis nos dois eixos, podemos adicionar outras vari�veis:

# Na forma de tamanho dos pontos ("size")

ggplot(atlas_ambiental) +
  geom_point(aes(x = renda, y = escolaridade, size = idade))

# Na forma de cores dos pontos ("color")

ggplot(atlas_ambiental) +
  geom_point(aes(x = renda, y = escolaridade, size = idade, color = favel < 6))

# Na pr�prio formato dos pontos ("shape")

ggplot(atlas_ambiental) +
  geom_point(aes(x = renda, y = escolaridade, 
                 size = idade, color = favel < 6, 
                 shape = mortalidade > 18)) +
  labs(title = "Indicadores dos Distritos do Munic�pio de S�o Paulo",
       x = "Renda",
       y = "Escolaridade") +
  theme_bw()

# Tamb�m � poss�vel plotar valores fitted no gr�fico

ggplot(atlas_ambiental) +
  geom_point(aes(x = renda, y = escolaridade, 
                 size = idade, color = favel < 6, 
                 shape = mortalidade > 18)) +
  geom_smooth(aes(x = renda, y = escolaridade), method = "loess", se = FALSE) +
  labs(title = "Indicadores dos Distritos do Munic�pio de S�o Paulo",
       x = "Renda",
       y = "Escolaridade") +
  theme_bw()

# --- Gr�fico de Linhas ---

# Vamos elaborar um gr�fico de linhas (geom_line) para dados ao longo do tempo
# Neste caso, vamos utilizar o banco de dados com pre�os de a��ees

library(readxl)
preco_acao <- read_excel("C:\\Users\\natha\\Downloads\\Introducao ao R e Graficoszip Portugues\\Introdu��o ao R e Gr�ficos\\(2) precos_acao.xlsx")

# Como temos 4 a��ees no banco de dados, vamos implementar o seguinte gr�fico
# Note que vamos separar cada empresa por meio da cor do gr�fico

ggplot(preco_acao) +
  geom_line(aes(x = data, y = preco, color = acao))

# Vamos formatar um pouco mais o gr�fico

ggplot(preco_acao) +
  geom_line(aes(x = data, y = preco, color = acao)) + 
  labs(x = "M�s de Refer�ncia",
       y = "Cota��o de Fechamento",
       title = "S�rie Hist�rica das A��ees",
       color = "Empresa") +
  theme_classic()

# Al�m disto, vamos adicionar os pontos com os valores da s�rie (geom_point)

ggplot(preco_acao) +
  geom_line(aes(x = data, y = preco, color = acao)) + 
  geom_point(aes(x = data, y = preco, color = acao)) +
  labs(x = "M�s de Refer�ncia",
       y = "Cota��o de Fechamento",
       title = "S�rie Hist�rica das A��ees",
       color = "Empresa") +
theme_classic()

# Adicionar os labels dos pontos dentro do gr�fico se torna invi�vel
# Veja o resultado:

ggplot(preco_acao) +
  geom_line(aes(x = data, y = preco, color = acao)) + 
  geom_point(aes(x = data, y = preco, color = acao)) +
  geom_text(aes(x = data, y = preco, label = preco), size = 3, vjust = 2, angle = 45) + 
  labs(x = "M�s de Refer�ncia",
       y = "Cota��o de Fechamento",
       title = "S�rie Hist�rica das A��ees",
       color = "Empresa") +
theme_classic()

# Para tornar o gr�fico mais interativo, vamos usar o ggplotly
# Basta indicar com o cursor do mouse o ponto para ver informa��ees

ggplotly(
ggplot(preco_acao) +
  geom_line(aes(x = data, y = preco, color = acao)) + 
  geom_point(aes(x = data, y = preco, color = acao)) +
  labs(x = "M�s de Refer�ncia",
       y = "Cota��o de Fechamento",
       title = "S�rie Hist�rica das A��ees",
       color = "Empresa") +
  theme_classic()
)

# --- Gr�fico de Calor ---

# Vamos gerar um gr�fico de calor que distingue informa��ees por meio de cores
# O banco de dados cont�m informa��ees sobre o tempo para chegar à escola
# Fonte: F�vero & Belfiore (2017, Cap�tulo 12)

library(readxl) # Se j� tiver carregado antes, n�o precisa fazer novamente
tempo_dist <- read_excel("C:\\Users\\natha\\Downloads\\Introducao ao R e Graficoszip Portugues\\Introdu��o ao R e Gr�ficos\\(2) tempo_dist.xls")

# Vamos trabalhar o gr�fico de calor no contexto das correla��ees entre vari�veis
# Portanto, primeiramente, vamos criar a matriz de correla��ees (fun��o "cor")
# Lembrando: selecionar apenas as vari�veis quantitativas da base de dados

correlacoes <- cor(tempo_dist[, 2:4])

correlacoes

# Algumas vezes, � necess�rio utilizar a base de dados em formatos espec�ficos
# Neste caso, vamos colocar os valores das correla��ees como uma vari�vel
# Para tanto, ser� aplicada a fun��o "melt"

correlacoes_reorg <- melt(correlacoes)

View(correlacoes_reorg)

# Agora vamos elaborar um gr�fico de calor (geom_tile) com algumas formata��ees

ggplot(correlacoes_reorg) +
  geom_tile(aes(x = Var1, y = Var2, fill = value)) + 
  labs(x = "Vari�veis",
       y = "Vari�veis",
       fill = "Coef. Correl.")

# Poder�amos trocar as cores para facilitar a visualiza��o
# Ao mesmo tempo, vamos adicionar r�tulos aos dados

ggplot(correlacoes_reorg) +
  geom_tile(aes(x = Var1, y = Var2, fill = value)) + 
  geom_text(aes(x = Var1, y = Var2, label = value), size = 5) +
  labs(x = "Vari�veis",
       y = "Vari�veis",
       fill = "Coef. Correl.") +
  scale_fill_gradient2(low = "blue", 
                       mid = "yellow", 
                       high = "red",
                       midpoint = 0)

# Por fim, podemos deixar o gr�fico mais interativo com a fun��o "ggplotly"

ggplotly(
ggplot(correlacoes_reorg) +
  geom_tile(aes(x = Var1, y = Var2, fill = value)) + 
  geom_text(aes(x = Var1, y = Var2, label = value), size = 5) +
  labs(x = "Vari�veis",
       y = "Vari�veis",
       fill = "Coef. Correl.") +
  scale_fill_gradient2(low = "blue", 
                       mid = "yellow", 
                       high = "red",
                       midpoint = 0)
)

# --- Gr�ficos Boxplot ---

# O boxplot apresenta medidas de posi��o das vari�veis
# M�nimo, m�ximo, 1� quartil, mediana e 3� quartil
# Vemos a distribui��o dos dados nas vari�veis e eventuais outliers univariados

# Inicialmente, vamos apresentar o boxplot de uma �nica vari�vel

load("C:\\Users\\natha\\Downloads\\Introducao ao R e Graficoszip Portugues\\Introdu��o ao R e Gr�ficos\\(2) atlas_ambiental.RData")

var_boxplot <- atlas_ambiental[,c(1,3)]

ggplot(var_boxplot) +
  geom_boxplot(aes(y = renda), fill = "gray", color = "blue") +
  labs(x = "Renda",
       y = "Valores")

# Vamos torn�-lo mais informativo com o ggplotly

ggplotly(
ggplot(var_boxplot) +
  geom_boxplot(aes(y = renda), fill = "gray", color = "blue") +
  labs(x = "Renda",
       y = "Valores")
)

# Por fim, vamos utilizar a ferramenta Esquisse
# Basicamente, � uma ferramenta interativa para a cria��o de gr�ficos
# Vamos ver algumas funcionalidades

esquisser(atlas_ambiental, viewer = "browser")

# Fim!
