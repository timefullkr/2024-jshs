@echo off
chcp 949
cls

echo Cursor AI 컨텍스트 메뉴 관리
echo ============================
echo 1. 메뉴 추가
echo 2. 메뉴 제거
echo 3. 종료
echo ============================
choice /c 123 /n /m "선택하세요 (1-3): "

if errorlevel 3 goto :eof
if errorlevel 2 goto REMOVE
if errorlevel 1 goto ADD

:ADD
:: 폴더에서 우클릭시
reg add "HKEY_CLASSES_ROOT\Directory\shell\OpenWithCursor" /v "MUIVerb" /t REG_SZ /d "Cursor AI로 열기" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\OpenWithCursor" /v "Icon" /t REG_SZ /d "C:\Users\%USERNAME%\AppData\Local\Programs\Cursor\Cursor.exe" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\OpenWithCursor\command" /ve /t REG_SZ /d "C:\Users\%USERNAME%\AppData\Local\Programs\Cursor\Cursor.exe \"%%1\"" /f

:: 폴더 내부 빈 공간에서 우클릭시
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithCursor" /v "MUIVerb" /t REG_SZ /d "Cursor AI로 열기" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithCursor" /v "Icon" /t REG_SZ /d "C:\Users\%USERNAME%\AppData\Local\Programs\Cursor\Cursor.exe" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithCursor\command" /ve /t REG_SZ /d "C:\Users\%USERNAME%\AppData\Local\Programs\Cursor\Cursor.exe \"%%V\"" /f

echo.
echo 메뉴가 성공적으로 추가되었습니다.
goto END

:REMOVE
:: 폴더 메뉴 제거
reg delete "HKEY_CLASSES_ROOT\Directory\shell\OpenWithCursor" /f
:: 폴더 내부 메뉴 제거
reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithCursor" /f

echo.
echo 메뉴가 성공적으로 제거되었습니다.
goto END

:END
echo.
pause