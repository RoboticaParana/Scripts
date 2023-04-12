@echo off
@chcp 65001 > NUL
title Robótica Paraná
color 20
mode 96,30
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo. ATENÇÃO!
echo.
echo. AS TAREFAS SOMENTE TERÃO EFEITOS SE EXECUTAR ESTE SCRIPT COMO ADMINISTRADOR!
echo.
echo. VOCÊ CLICOU COM O BOTÃO DIREITO E ESCOLHEU A OPÇÃO EXECUTAR COMO ADMINISTRADOR?
echo.
echo. 1 - SIM, eu executei o script como ADMINISTRADOR e quero CONTINUAR!
echo.
echo. 2 - NÃO, eu esqueci de executar como ADMINISTRADOR e quero SAIR!
echo.
echo.
set /p "opcao=Escolha uma opção: "
if %opcao% equ 1 goto menu
if %opcao% equ 2 goto exit


REM ----------------------------------------MENU-------------------------------------------------------------
:menu
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
echo.
echo            MENU TAREFAS
echo  ===========================================
echo *  1. Alteração de Senha                    * 
echo *  2. Listar Todas as Contas                * 
echo *  3. Criar Conta                           * 
echo *  4. Deletar Conta                         *
echo *  5. Criar as Contas de Equipes (10 contas)*
echo *  6. Excluir Todas Contas de Equipes       *
echo *  7. Ativar Conta de Visitante             *
echo *  8. Excluir Conta de Visitante            *
echo *  9. Atualizar Senhas Expiradas            *
echo *  10. Renomear Conta                       *
echo *  0. Sair                                  * 
echo  ===========================================
@echo.
set /p "opcao= Escolha uma opção: "
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9
if %opcao% equ 10 goto opcao10
if %opcao% equ 0 goto opcao0

REM ----------------------------------------OPÇÃO 01-------------------------------------------------------------

:opcao1
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
ECHO. Tarefa 1: Alteração de Senha
ECHO. 
ECHO. 
NET USER
SET /P "usuario= Digite o nome do usuário ou 0 para retornar ao menu principal: "
if %usuario% equ 0 goto menu
)
CLS
ECHO.
ECHO. Tarefa 1: Alteração de Senha
ECHO.
ECHO. Ao digitar a senha, nada irá aparecer, porém digite e de enter. Após, confirme a senha e de enter novamente
NET USER "%usuario%" *
IF %ERRORLEVEL% EQU 0 (ECHO Senha trocada com sucesso!) else (ECHO. Falha no Processo! Execute como Administrador!)
PAUSE
GOTO menu

REM ----------------------------------------OPÇÃO 02-------------------------------------------------------------

:opcao2
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
echo. Tarefa 2: Listar Todas as Contas 
echo.
NET USER
PAUSE
GOTO menu

REM ----------------------------------------OPÇÃO 03-------------------------------------------------------------

:opcao3
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
echo. Tarefa 3: Criar Conta 
echo.
SET /P "conta= Informe o nome para a conta (SEM ESPAÇO) ou 0 para retornar ao menu principal: "
if %conta% equ 0 goto menu
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
echo. Tarefa 3: Criar Conta 
echo.
SET /P "senha= Informe a senha para a conta ou 0 para retornar ao menu principal: "
if %senha% equ 0 goto menu
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
echo. Tarefa 3: Criar Conta 
echo.
echo. Confira os dados...
echo.
echo. Conta: %conta%
echo. Senha: %senha%
echo.
SET /P "confirma= Confirma? S/N: "
if %confirma% equ s goto criar
if %confirma% equ S goto criar
if %confirma% equ n goto opcao3
if %confirma% equ N goto opcao3
:criar
 	 net user %conta% %senha% /add  > NUL
 	 net user %conta% /passwordchg:no  > NUL
 	 net user %conta% /expires:never > NUL
        WMIC USERACCOUNT WHERE Name='%conta%' SET PasswordExpires=FALSE > NUL
echo.
IF %ERRORLEVEL% EQU 0 (ECHO Conta criada com sucesso!) else (ECHO. Falha no Processo! Execute como Administrador!)
PAUSE
GOTO menu

REM ----------------------------------------OPÇÃO 04-------------------------------------------------------------

:opcao4
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
echo. Tarefa 4: Deletar Conta 
echo.
echo. Listando as contas existentes...
NET USER
echo.
SET /P "conta= Informe o nome da conta que deseja excluir ou 0 para retornar ao menu principal: "
if %conta% equ 0 goto menu
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
echo. Tarefa 4: Deletar Conta 
echo.
echo. Confira os dados...
echo.
echo. Conta a ser excluída: %conta%
echo.
echo. Após isso, TODOS os aqruivos da conta %conta% serão excluídos irreversívelmente!
echo.
SET /P "confirma= Confirma? S/N: "
if %confirma% equ s goto excluir
if %confirma% equ S goto excluir
if %confirma% equ n goto opcao4
if %confirma% equ N goto opcao4
:excluir
         IF EXIST C:\Users\%conta%\ ( rd /s C:\Users\%conta% /q > NUL )
 	 net user %conta% /delete  > NUL
IF %ERRORLEVEL% EQU 0 (ECHO Conta excluída com sucesso!) else (ECHO. Falha no Processo! Execute como Administrador!)
echo.
PAUSE
GOTO menu


REM ----------------------------------------OPÇÃO 05-------------------------------------------------------------
:opcao5
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
echo. Tarefa 5: Criar as Contas de Equipes (10 contas)
echo.
echo Criando contas de Equipes...
timeout /t 1 /nobreak > NUL
	FOR /L %%i IN (1,1,10) DO (
 	 net user Equipe%%i equipe%%i /add  > NUL
 	 net user Equipe%%i /passwordchg:no  > NUL
 	 net user Equipe%%i /expires:never > NUL
         WMIC USERACCOUNT WHERE Name='Equipe%%i' SET PasswordExpires=FALSE > NUL
	)
IF %ERRORLEVEL% EQU 0 (ECHO Ok, criei as 10 contas de Equipes!) else (ECHO. Falha no Processo! Execute como Administrador!)
echo.
PAUSE
GOTO menu

REM ----------------------------------------OPÇÃO 06-------------------------------------------------------------
:opcao6
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
echo. Tarefa 6: Excluir Todas Contas de Equipes
echo.
echo. Após isso, TODOS os aqruivos das contas Equipes serão excluídos irreversívelmente!
echo.
SET /P "confirma= Confirma? S/N: "
if %confirma% equ s goto excluir
if %confirma% equ S goto excluir
if %confirma% equ n goto menu
if %confirma% equ N goto menu
:excluir
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
echo. Tarefa 6: Excluir Todas Contas de Equipes
echo.
echo Excluindo todas as contas de Equipe...
timeout /t 2 /nobreak > NUL

FOR /L %%i IN (1,1,10) DO (
         net user Equipe%%i /delete  > NUL
 	 IF EXIST C:\Users\Equipe%%i\ ( rd /s C:\Users\Equipe%%i /q) > NUL

	)> NUL
)

IF %ERRORLEVEL% EQU 0 (ECHO Ok, exclui as 10 contas de Equipes!) else (ECHO. Falha no Processo! Execute como Administrador!)
echo.
PAUSE
GOTO menu

REM ----------------------------------------OPÇÃO 07-------------------------------------------------------------
:opcao7
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
echo. Tarefa 7: Ativar Conta de Visitante
echo.
echo.
echo Ativando a conta de Visitante...
timeout /t 2 /nobreak > NUL
net user Visitante visitante /add /active:yes > NUL
net user Visitante /passwordchg:no  > NUL
net user Visitante /expires:never > NUL
WMIC USERACCOUNT WHERE Name='Visitante' SET PasswordExpires=FALSE > NUL
echo.
IF %ERRORLEVEL% EQU 0 (ECHO Ok, ativei a conta de Visitante!) else (ECHO. Falha no Processo! Execute como Administrador!)
echo.
PAUSE
GOTO menu

REM ----------------------------------------OPÇÃO 08-------------------------------------------------------------
:opcao8
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
echo. Tarefa 8: Excluir Conta de Visitante
echo.
echo.
echo.
echo Excluindo a conta de Visitante...
timeout /t 2 /nobreak > NUL
net user Visitante /delete > NUL
IF EXIST C:\Users\Visitante\ (
rd /s C:\Users\Visitante /q > NUL
)
echo.
IF %ERRORLEVEL% EQU 0 (ECHO Ok, exclui a conta de Visitante!) else (ECHO. Falha no Processo! Execute como Administrador!)
echo.
PAUSE
GOTO menu

REM ----------------------------------------OPÇÃO 09-------------------------------------------------------------
:opcao9
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
echo. Tarefa 9: Atualizar Senhas Expiradas
echo.
echo.
echo.
echo Atualizando senhas...
echo.
timeout /t 1 /nobreak > NUL
        WMIC USERACCOUNT WHERE Name='Robótica Paraná' SET PasswordExpires=FALSE > NUL
	FOR /L %%i IN (1,1,10) DO (
            WMIC USERACCOUNT WHERE Name='Aluno%%i' SET PasswordExpires=FALSE > NUL
           )
IF %ERRORLEVEL% EQU 0 (ECHO Ok, as senhas nunca mais irão expirar...) else (ECHO. Falha no Processo! Execute como Administrador!)
echo.
PAUSE
GOTO menu

REM ----------------------------------------OPÇÃO 10-------------------------------------------------------------
:opcao10
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
echo. Tarefa 10: Renomear Conta
echo.
NET USER
echo.
echo.
echo.
SET /P "conta= Informe o nome da conta a ser RENOMEADA ou 0 para retornar ao menu principal: "
if %conta% equ 0 goto menu
cls
date /t
@echo.
@echo.
echo.####################################### ROBÓTICA PARANÁ #######################################
echo.
echo.
echo. ATENÇÃO, AS TAREFAS SÓ SERÃO REALIZADAS SE ESTIVER EXECUTANDO ESTE SCRIPT COMO ADMINISTRADOR!
echo.
ECHO.
echo. Tarefa 10: Renomear Conta
echo.
NET USER
echo.
echo.
echo.
SET /P "novo= Informe o NOVO nome da conta ou 0 para retornar ao menu principal: "
if %conta% equ 0 goto menu
wmic useraccount where name="%conta%" rename %novo% > NUL
IF %ERRORLEVEL% EQU 0 (ECHO Ok, a conta foi renomeada...) else (ECHO. Falha no Processo! Execute como Administrador!)
echo.
PAUSE
GOTO menu

REM ----------------------------------------OPÇÃO 00-------------------------------------------------------------
:opcao0
cls
echo.
echo Até logo!
echo.
echo Equipe Robótica Paraná
timeout /t 2 /nobreak > NUL
exit






