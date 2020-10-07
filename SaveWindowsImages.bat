@echo off
cls
echo Script para salvar imagens da tela de bloqueio Windows
echo.
set /p user=Digite o usuario de seu disco C: 
set origem=C:\Users\%user%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets
set destino=C:\Users\%user%\Desktop\Destino_Bckp
set sub=/S

echo %origem%
echo.
echo %destino%
echo.
echo %sub%

xcopy "%origem%\*" "%destino%" %sub%
pause

echo.
echo Alterando arquivo de .arquivo para .jpg
ren %destino%\* *.jpg 
echo Arquivos alterados de extensao 

echo.
echo Pressione qualquer tecla para encerrar...
pause > nul