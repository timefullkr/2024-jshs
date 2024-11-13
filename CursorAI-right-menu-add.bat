@echo off
setlocal enabledelayedexpansion

:: 관리자 권한 확인
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo 이 스크립트는 관리자 권한이 필요합니다.
    echo 스크립트를 관리자 권한으로 다시 실행해주세요.
    pause
    exit /B 1
)

:: Cursor AI 실행 파일 경로 설정
set "CURSOR_PATH=C:\Users\%USERNAME%\AppData\Local\Programs\Cursor\Cursor.exe"

:: 실행 파일 존재 여부 확인
if not exist "%CURSOR_PATH%" (
    echo Cursor AI가 설치되어 있지 않습니다.
    echo 먼저 Cursor AI를 설치해주세요.
    pause
    exit /B 1
)

:: 레지스트리 추가
reg add "HKEY_CLASSES_ROOT\Directory\shell\OpenWithCursor" /v "MUIVerb" /t REG_SZ /d "Cursor AI로 열기" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\OpenWithCursor" /v "Icon" /t REG_SZ /d "\"%CURSOR_PATH%\"" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\OpenWithCursor\command" /ve /t REG_SZ /d "\"%CURSOR_PATH%\" \"%%1\"" /f

echo 컨텍스트 메뉴가 성공적으로 추가되었습니다.
pause
