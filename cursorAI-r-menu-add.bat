@echo off
chcp 949
cls

echo Cursor AI ���ؽ�Ʈ �޴� ����
echo ============================
echo 1. �޴� �߰�
echo 2. �޴� ����
echo 3. ����
echo ============================
choice /c 123 /n /m "�����ϼ��� (1-3): "

if errorlevel 3 goto :eof
if errorlevel 2 goto REMOVE
if errorlevel 1 goto ADD

:ADD
:: �������� ��Ŭ����
reg add "HKEY_CLASSES_ROOT\Directory\shell\OpenWithCursor" /v "MUIVerb" /t REG_SZ /d "Cursor AI�� ����" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\OpenWithCursor" /v "Icon" /t REG_SZ /d "C:\Users\%USERNAME%\AppData\Local\Programs\Cursor\Cursor.exe" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\OpenWithCursor\command" /ve /t REG_SZ /d "C:\Users\%USERNAME%\AppData\Local\Programs\Cursor\Cursor.exe \"%%1\"" /f

:: ���� ���� �� �������� ��Ŭ����
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithCursor" /v "MUIVerb" /t REG_SZ /d "Cursor AI�� ����" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithCursor" /v "Icon" /t REG_SZ /d "C:\Users\%USERNAME%\AppData\Local\Programs\Cursor\Cursor.exe" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithCursor\command" /ve /t REG_SZ /d "C:\Users\%USERNAME%\AppData\Local\Programs\Cursor\Cursor.exe \"%%V\"" /f

echo.
echo �޴��� ���������� �߰��Ǿ����ϴ�.
goto END

:REMOVE
:: ���� �޴� ����
reg delete "HKEY_CLASSES_ROOT\Directory\shell\OpenWithCursor" /f
:: ���� ���� �޴� ����
reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithCursor" /f

echo.
echo �޴��� ���������� ���ŵǾ����ϴ�.
goto END

:END
echo.
pause