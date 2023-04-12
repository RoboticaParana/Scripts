@echo off
@chcp 65001 > NUL
title Robótica Paraná
color 20
mode 60,20
:menu
cls
date /t

@echo.
@echo.
echo            MENU TAREFAS
echo  ===========================================
echo *  1. Proteger a conta de Administrador     * 
echo *  2. Criar as contas de Aluno (10 contas)  *
echo *  3. Excluir todas contas de Aluno         *
echo *  4. Ativar conta de Visitante             *
echo *  5. Excluir conta de Visitante            *
echo *  6. Gerar arquivo com as senhas           *
echo *  0. Sair                                  * 
echo  ===========================================
@echo.
set /p opcao= Escolha uma opção: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 0 goto opcao0



:opcao1
cls
IF EXIST C:\Users\Aluno\ (
net user Aluno /delete > NUL
CD\ > NUL
RD /S C:\Users\Aluno /Q > NUL
)
echo.
echo Protegendo a conta de Administrador...
timeout /t 2 /nobreak > NUL
net user User robotic@p@r@n@ > NUL
net user User /expires:never
WMIC USERACCOUNT WHERE Name='Robótica Paraná' SET PasswordExpires=FALSE > NUL
echo OK, criei uma senha de segurança.
echo.
pause
goto menu

:opcao2
cls
echo.
echo Criando contas de Aluno...
	FOR /L %%i IN (1,1,10) DO (
 	 net user Aluno%%i aluno%%i /add  > NUL
 	 net user Aluno%%i /passwordchg:no  > NUL
 	 net user Aluno%%i /expires:never > NUL
         WMIC USERACCOUNT WHERE Name='Aluno%%i' SET PasswordExpires=FALSE > NUL
	)
echo OK, criei as 10 contas de Alunos.
echo.
timeout /t 1 /nobreak > NUL
pause
goto menu


:opcao3
cls
@echo.
echo Excluindo todas as contas de Aluno...
timeout /t 2 /nobreak > NUL
IF EXIST C:\Users\Aluno1\ (
FOR /L %%i IN (1,1,10) DO (
 	 rd /s C:\Users\Aluno%%i /q > NUL
	)> NUL
)
	FOR /L %%i IN (1,1,10) DO (
 	 net user Aluno%%i /delete  > NUL
	)
echo OK, exclui todas as contas de Alunos.
echo.
timeout /t 1 /nobreak > NUL
pause
goto menu

:opcao6
cls
echo ________________________________________________ >> %userprofile%\Desktop\Senhas.txt
echo .      Login            .         Senha        . >> %userprofile%\Desktop\Senhas.txt
echo .                       .                      . >> %userprofile%\Desktop\Senhas.txt
echo .   Robótica Paraná     .    robotic@p@r@n@    . >> %userprofile%\Desktop\Senhas.txt
echo .      Visitante        .    visitante         . >> %userprofile%\Desktop\Senhas.txt
echo .                       .                      . >> %userprofile%\Desktop\Senhas.txt
echo .      Aluno1           .    aluno1            . >> %userprofile%\Desktop\Senhas.txt
echo .      Aluno2           .    aluno2            . >> %userprofile%\Desktop\Senhas.txt
echo .      Aluno3           .    aluno3            . >> %userprofile%\Desktop\Senhas.txt
echo .      Aluno4           .    aluno4            . >> %userprofile%\Desktop\Senhas.txt
echo .      Aluno5           .    aluno5            . >> %userprofile%\Desktop\Senhas.txt
echo .      Aluno6           .    aluno6            . >> %userprofile%\Desktop\Senhas.txt
echo .      Aluno7           .    aluno7            . >> %userprofile%\Desktop\Senhas.txt
echo .      Aluno8           .    aluno8            . >> %userprofile%\Desktop\Senhas.txt
echo .      Aluno9           .    aluno9            . >> %userprofile%\Desktop\Senhas.txt
echo .      Aluno10          .    aluno10           . >> %userprofile%\Desktop\Senhas.txt
echo .                       .                      . >> %userprofile%\Desktop\Senhas.txt
echo ________________________________________________ >> %userprofile%\Desktop\Senhas.txt
echo ________________________________________________________
echo.                                              
echo  Criei um arquivo com as senhas na Área de Trabalho...               
echo.
echo  Salve-o em um local seguro!           
echo.
echo ________________________________________________________
echo.
pause
goto menu


:opcao4
cls
echo.
echo Ativando a conta de Visitante!
timeout /t 2 /nobreak > NUL
net user Visitante visitante /add /active:yes > NUL
net user Visitante /passwordchg:no  > NUL
net user Visitante /expires:never > NUL
WMIC USERACCOUNT WHERE Name='Visitante' SET PasswordExpires=FALSE > NUL
echo.
echo Ok, ativei a conta de Visitante!
echo.
timeout /t 1 /nobreak > NUL
pause
goto menu

:opcao5
cls
echo.
echo Excluindo a conta de Visitante!
timeout /t 2 /nobreak > NUL
net user Visitante /delete > NUL
IF EXIST C:\Users\Visitante\ (
rd /s C:\Users\Visitante /q > NUL
)
echo.
echo Ok, exclui a conta de Visitante!
echo.
timeout /t 1 /nobreak > NUL
pause
goto menu

:opcao0
cls
echo.
echo Até logo!
echo.
echo Equipe Robótica Paraná
timeout /t 1 /nobreak > NUL
exit

