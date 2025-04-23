Algoritmo "GZ 1.3"
// Disciplina   : Individual
// Professor   : Ninguem ainda
// Descrição   : Testes de Layout
// Autor(a)    : Danilo Cardoso de Jesus
// Data atual  : 31/03/2025

//  Variavel  Variavel  Variavel  Variavel  Variavel  Variavel  Variavel
//  Variavel  Variavel  Variavel  Variavel  Variavel  Variavel  Variavel
//  Variavel  Variavel  Variavel  Variavel  Variavel  Variavel  Variavel
//  Variavel  Variavel  Variavel  Variavel  Variavel  Variavel  Variavel
//  Variavel  Variavel  Variavel  Variavel  Variavel  Variavel  Variavel
 //Humano Padrão: VIDA = 30 || ENERGIA = 30 || INT = 12 ||
//FORÇA = 6 || VONTADE = 6 || AGILIDADE = 6 ||
//==============================================================================
Var
Enter, Nome, Gene, Raca: caracter
Idade: inteiro
For, Agi, Von, Inte, ForBuff, AgiBuff, VonBuff, IntBuff: inteiro
HP, Ener, HPAtual, EnerAtual: inteiro
ForXP, AgiXP, VonXP, IntXP, ForXPAt, AgiXPAt, VonXPAt, IntXPAt: inteiro
//XP = eXPeriência || At = Atual || HP = HealtPoints
//==============================================================================
   Funcao TelaInicial: caracter
   Var
   Inicio
         escreval(" /¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\")
         escreval(" | |¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯| |")
         escreval(" | |          _____                                          | |")
         escreval(" | |         / ____|                                         | |")
         escreval(" | |        | |     ___  _ __ ___   ___  ___ __ _ _ __       | |")
         escreval(" | |        | |    / _ \| '_ ` _ \ / _ \/ __/ _` | '__|      | |")
         escreval(" | |        | |____ (_) | | | | | |  __/ (__ (_| | |         | |")
         escreval(" | |         \_____\___/|_| |_| |_|\___|\___\__,_|_|         | |")
         escreval(" | |                 _____ ______    ___    __               | |")
         escreval(" | |                / ____|___  /   / _ \  /_ |              | |")
         escreval(" | |               | |  __   / /   | | | |  | |              | |")
         escreval(" | |               | | |_ | / /    | | | |  | |              | |")
         escreval(" | |               | |__| |/ /__   | |_| |  | |              | |")
         escreval(" | |                \_____/_____|   \___/(_)|_|              | |")
         escreval(" | |                       Aperte  Enter                     | |")
         escreval(" | |_________________________________________________________| |")
         escreval(" \_____________________________________________________________/")
      // escreval("1234567890123456789012345678901234567890123456789012345678901234")
         escreva("                                ")
      EnterFuncao
   Fimfuncao
//==============================================================================
   procedimento EnterFuncao
   var
   Inicio
         Leia(Enter)
         escolha Enter
         caso ""
         limpatela

         outrocaso
         escreval("Era para apertar Enter...")
         timer 1000
         limpatela
         timer 0
         escreval(TelaInicial)
         fimescolha
   Fimprocedimento
//==============================================================================
   Procedimento Genero
   var
      gen: real
   inicio
         leia(gen)
         SE gen = 1 ENTAO
         Gene <- "Masculino"
         SENAO
              SE gen = 2 ENTAO
              Gene <- "Feminino"
              SENAO
                   SE gen = 3 ENTAO
                   Gene <- "Outro"
                   SENAO
                        SE (gen <> 6) ENTAO
                        escreval("Helicoptero de Combate(Heco)")
                        Gene <- "Heco"
                        SENAO
                             escreval("Energias de Combate Máxima")
                             Gene <- "Enercom"
                        FIMSE
                   FIMSE
              FIMSE
         FIMSE



   fimprocedimento
//==============================================================================

//==============================================================================
procedimento IdadesAnos
var
age: inteiro
inicio
age <- idade
SE age = 0 ENTAO
   escreval("Você é um [Bebê]!!!")
   SENAO
        SE age <= 6 ENTAO
        escreval("Você é um [Infantil]..")
        idade <- age
        escreval("Você tem:", idade, " Ano(s)")
        SENAO
             SE age <= 12 ENTAO
             escreval("Você é uma [Criança]!!")
             idade <- age
             escreval("Você tem:", idade, " Anos")
             SENAO
                  SE age <= 18 ENTAO
                  escreval("Você é um [Adolescente]!")
                  idade <- age
                  escreval("Você tem:", idade, " Anos")
                  SENAO
                       SE age <= 30 ENTAO
                       escreval("Você é um [Jovem Adulto].")
                       idade <- age
                       escreval("Você tem:", idade, " Anos")
                       SENAO
                            SE age <= 40 ENTAO
                            escreval("Você é um [Adulto]")
                            idade <- age
                            escreval("Você tem:", idade, " Anos")
                            SENAO
                                 SE age <= 59 ENTAO
                                 escreval("Você é alguém de [Meia idade]")
                                 idade <- age
                                 escreval("Você tem:", idade, " Anos")
                                 SENAO
                                      SE age <= 80 ENTAO
                                      escreval("Você é um [Idoso]")
                                      idade <- age
                                      escreval("Você tem:", idade, " Anos")
                                      SENAO
                                           SE age <= 100 ENTAO
                                           escreval("Você é um [Idoso Avançado]")
                                           idade <- age
                                           escreval("Você tem:", idade, " Anos")
                                           SENAO
                                                SE age > 100 ENTAO
                                                escreval("Você é um [Defunto]... Meus pesames")
                                                idade <- age
                                                escreval("Você tem:", idade, " Anos")
                                                FIMSE
                                           FIMSE
                                      FIMSE
                                 FIMSE
                            FIMSE
                       FIMSE
                  FIMSE
             FIMSE
        FIMSE
   FIMSE
fimprocedimento
//==============================================================================
   procedimento Ficha
   var
   inicio
         escreval("/¯\_-¯-_-¯-_-¯-_-¯-_-¯-Ficha de Personagem-¯-_-¯-_-¯-_-¯-_-¯-_/¯\")
         escreval("\-/================================\-/")
         escreva("Nome do Personagem: ")
         escreval(nome)
         escreva("Gênero: ")
         escreval(gene)
         IdadesAnos
         escreval("\-/===========[ Status ]===========\-/")
         escreval("Vida: ", HPAtual, "/", HP)
         escreval("Energia: ", EnerAtual, "/", Ener)
         escreval("Inteligencia:", Inte, "   (", IntXPAt, " /", IntXP," )" )
         escreval("Vontade:", Von, "        (", VonXPAt, " /", VonXP," )")
         escreval("Força:", For, "          (", ForXPAt, " /", ForXP," )")
         escreval("Agilidade:", Agi, "      (", AgiXPAt, " /", AgiXP," )")
         escreval("\_/¯-_-¯-_-¯-_-¯-_-¯-_-Ficha de Personagem-_-¯-_-¯-_-¯-_-¯-_-¯\_/")
   fimprocedimento
//==============================================================================
Procedimento CalculosHeh
var
inicio
      SE Gene = "Masculino" ENTAO
         HP <- 8
         Ener <- 4
         Inte <- 0
         Von <- 1
         For <- 2
         Agi <- 1
      SENAO
           SE Gene = "Feminino" ENTAO
              HP <- 4
              Ener <- 6
              Inte <- 4
              Von <- 1
              For <- 0
              Agi <- 1
           SENAO
                SE Gene = "Outro" ENTAO
                   HP <- 2
                   Ener <- 8
                   Inte <- 4
                   Von <- 2
                   For <- 0
                   Agi <- 0
                SENAO
                     SE Gene = "Heco" ENTAO
                       HP <- 10
                       Ener <- 2
                       Inte <- 0
                       Von <- 0
                       For <- 2
                       Agi <- 2
                     SENAO
                          HP <- 10 // HP <- 24
                          Ener <- 10 // Ener <- 20
                          Inte <- 10 // Inte <- 8
                          Von <- 10  // Von <- 4
                          For <- 10 // For <- 4
                          Agi <- 10 // Agi <- 4
                     FIMSE
                FIMSE
           FIMSE
      FIMSE


SE idade = 0 ENTAO
HP <- HP - ( HP \ 2 )
Ener <- Ener - ( Ener \ 2 )
Inte <- Inte - (Inte\2)
Von <-  Von - (Von\2)
For <-  For - (For\2)
Agi <-  Agi - (Agi\2)
IntXP <- Inte*200
VonXP <- Von*200
ForXP <- For*200
AgiXP <- Agi*200
   SENAO
        SE idade <= 6 ENTAO
        HP <- HP - ( HP \ 4 )
        Ener <- Ener + ( Ener \ 2 )
        Inte <- Inte - ( Inte \ 4 )
        Von <-  Von - ( Von \ 4 )
        For <-  For - ( For \ 4 )
        Agi <-  Agi - ( Agi \ 4 )
        IntXP <- Inte*175
        VonXP <- Von*175
        ForXP <- For*175
        AgiXP <- Agi*175

        SENAO
             SE idade <= 12 ENTAO
             HP <- HP + ( HP \ 4 )
             Ener <- Ener + Ener
             Inte <- Inte + (Inte \ 4)
             Von <-  Von + 0
             For <-  For + 0
             Agi <-  Agi + (Agi \ 3)
             IntXP <- Inte*150
             VonXP <- Von*150
             ForXP <- For*150
             AgiXP <- Agi*150

             SENAO
                  SE idade <= 18 ENTAO
                  HP <- HP + ( HP \ 3 )
                  Ener <- Ener + (Ener \ 2)
                  Inte <- Inte + (Inte \ 3)
                  Von <-  Von + (Von \ 4)
                  For <-  For + (For \ 3)
                  Agi <-  Agi + (Agi \ 4)
                  IntXP <- Inte*125
                  VonXP <- Von*125
                  ForXP <- For*100
                  AgiXP <- Agi*100

                  SENAO
                       SE idade <= 30 ENTAO
                       HP <- HP + HP
                       Ener <- Ener + (Ener \ 3)
                       Inte <- Inte + (Inte \ 2)
                       Von <-  Von + (Von \ 2)
                       For <-  For + ((For \ 4)*3)
                       Agi <-  Agi + ((Agi \ 4)*3)
                       IntXP <- Inte*100
                       VonXP <- Von*100
                       ForXP <- For*100
                       AgiXP <- Agi*100

                       SENAO
                            SE idade <= 40 ENTAO
                            HP <- HP
                            Ener <- Ener
                            Inte <- Inte + (Inte \ 4)
                            Von <-  Von + (Von \ 3)
                            For <-  For
                            Agi <-  Agi
                            IntXP <- Inte*125
                            VonXP <- Von*125
                            ForXP <- For*125
                            AgiXP <- Agi*125

                            SENAO
                                 SE idade <= 59 ENTAO
                                 HP <- HP - (HP \ 5)
                                 Ener <- Ener - (Ener \ 5)
                                 Inte <- Inte - (Inte \ 4)
                                 Von <-  Von
                                 For <-  For - (For \ 5)
                                 Agi <-  Agi - (Agi \ 5)
                                 IntXP <- Inte*125
                                 VonXP <- Von*125
                                 ForXP <- For*150
                                 AgiXP <- Agi*150

                                 SENAO
                                      SE idade <= 80 ENTAO
                                      HP <- HP - (HP \ 2)
                                      Ener <- Ener - (Ener \ 2)
                                      Inte <- Inte - (Inte \ 3)
                                      Von <-  Von
                                      For <-  For - (For \ 2)
                                      Agi <-  Agi - (Agi \ 2)
                                      IntXP <- Inte*150
                                      VonXP <- Von*125
                                      ForXP <- For*175
                                      AgiXP <- Agi*175

                                      SENAO
                                           SE idade <= 100 ENTAO
                                           HP <- HP - ((HP \ 4)*3)
                                           Ener <- Ener - ((Ener \ 4)*3)
                                           Inte <- Inte - (Inte \ 2)
                                           Von <-  Von
                                           For <-  For - ((For \ 4)*3)
                                           Agi <-  Agi - ((Agi \ 4)*3)
                                           IntXP <- Inte*175
                                           VonXP <- Von*125
                                           ForXP <- For*200
                                           AgiXP <- Agi*200

                                           SENAO
                                                SE idade > 100 ENTAO
                                                HP <- (HP \ 10)
                                                Ener <- (Ener \ 10)
                                                Inte <- (Inte \ 10)
                                                Von <-  Von
                                                For <-  (For \ 10)
                                                Agi <-  (Agi \ 10)
                                                IntXP <- Inte*200
                                                VonXP <- Von*150
                                                ForXP <- For*300
                                                AgiXP <- Agi*300
                                                FIMSE
                                           FIMSE
                                      FIMSE
                                 FIMSE
                            FIMSE
                       FIMSE
                  FIMSE
             FIMSE
        FIMSE
   FIMSE
HPAtual <- HP
EnerAtual <- Ener
Fimprocedimento

//==============================================================================
//  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio
//  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio
//  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio
//  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio
//  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio
//  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio  Inicio
Inicio
      escreva(TelaInicial)
      escreval("/¯\_-¯-_-¯-_-¯-_-¯-_-¯-Ficha de Personagem-¯-_-¯-_-¯-_-¯-_-¯-_/¯\")
      escreval("\-/================================\-/")
      escreval("Nome do Personagem: ")
      leia(nome)
      escreval("\-/================================\-/")
      escreva("(Gênero || 1 = Masculino || 2 = Feminino || 3 = Outro): ")
      Genero
      escreva("Gênero: ")
      escreval(gene)
      escreval("\-/===========Escreva-A-Idade-Em-Anos===========\-/")
      escreval("   1~6  =   Infantil   ||  7~12 =     Criança   ||")
      escreval("  13~18 = Adolescente  || 19~30 =  Jovem Adulto ||")
      escreval("  31~40 =    Adulto    || 41~59 =   Meia-Idade  ||")
      escreva("  60~80 =    Idoso     ||81~100 = Idoso Avançado||: ")
      leia(idade)
      IdadesAnos
      escreval("\-/================================\-/")


      escreval("\_/¯-_-¯-_-¯-_-¯-_-¯-_-Ficha de Personagem-_-¯-_-¯-_-¯-_-¯-_-¯\_/")
      timer 1500
      limpatela
      timer 0
      CalculosHeh
      Ficha



















Fimalgoritmo