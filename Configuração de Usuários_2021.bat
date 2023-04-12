@echo off
title Robotica Parana
color 20
mode 50,20
date /t
time /t
:menu
echo.
echo ________________________________________________
echo.
echo Definindo senha para o usuario: User...
timeout /t 3 /nobreak > NUL
echo Senha definida com sucesso!
echo.  
net user User robotic@p@r@n@ > NUL
net user User /expires:never
IF EXIST C:\Users\Aluno\ (
echo Formatando usuario Aluno...
timeout /t 3 /nobreak > NUL
echo Formatado com sucesso!
net user Aluno /delete > NUL
CD\ > NUL
RD /S C:\Users\Aluno /Q > NUL
)ELSE (echo Criando novo usuario: Aluno... 
timeout /t 3 /nobreak > NUL 
echo Usuario criado com sucesso!
echo.
echo Definindo senha para o usuario: Aluno...
timeout /t 3 /nobreak > NUL  
echo Senha definida com sucesso!)
net user Aluno aluno /add > NUL
net user Aluno /passwordchg:no > NUL
net user Aluno /expires:never > NUL
echo.
IF EXIST C:\Users\User\Desktop\Senhas.txt (
DEL %userprofile%\Desktop\Senhas.txt > NUL
)
echo Senhas dos usuários: Notebook Robótica Paraná >> C:\Users\User\Desktop\Senhas.txt
echo ________________________________________________ >> C:\Users\User\Desktop\Senhas.txt
echo .      Login            .         Senha        . >> C:\Users\User\Desktop\Senhas.txt
echo .                       .                      . >> C:\Users\User\Desktop\Senhas.txt
echo .      User             .    robotic@p@r@n@    . >> C:\Users\User\Desktop\Senhas.txt
echo .                       .                      . >> C:\Users\User\Desktop\Senhas.txt
echo .      Aluno            .    aluno             . >> C:\Users\User\Desktop\Senhas.txt
echo .                       .                      . >> C:\Users\User\Desktop\Senhas.txt
echo ________________________________________________ >> C:\Users\User\Desktop\Senhas.txt
pause
cls
echo ________________________________________________
echo.                                              
echo  Criei um arquivo com as senhas no seu Desktop...               
echo.
echo  Salve-o em um local seguro!           
echo.
echo  Equipe: Robotica Parana.                    
echo.
echo ________________________________________________
echo.
pause