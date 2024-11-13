# GitHub 교재 사용 가이드 (학생용)

## 1️⃣ 최초 1회 설정 
```bash
# 1. Git 설치 확인
git --version
# 결과: git version 2.34.1 이상이면 OK

# 2. 작업 폴더 생성 및 이동
cd "작업할 상위폴더"
git clone https://github.com/timefullkr/2024-jshs-projects.git
cd 2024-jshs-projects

# 3. 자신의 이메일 이름으로 작업 폴더 생성
mkdir your.email@example.com
cd your.email@example.com

# 4. Git 설정 (프로젝트별 설정)
git config --global user.name  "본인이름"
git config --global user.email "이메일"
git config --global alias.save "!git add . && git commit -m 'updated'"
git config --global alias.update "pull origin main"

# 5. 설정 확인
git config --local --list
```

## 2️⃣ 매일 수업 시작시
```bash
# 1. 자신의 작업 폴더로 이동
cd ./2024-jshs-projects/your.email

# 2. 최신 자료 받기
git update
# 또는
git pull origin main
```

## 3️⃣ 작업 내용 저장하기
```bash
# 간단한 저장
git save
git push origin main

# 또는 단계별 저장
git add .
git commit -m "작업내용 설명"
git push origin main
```

## 4️⃣ 수업 종료 시 (필수!)
```bash
# 1. 작업 내용 저장
git save
git push origin main

# Windows 자격증명 삭제
# 방법 1: CMD 명령어 사용
제어판 → 사용자 계정 → 자격 증명 관리자 
→ Windows 자격 증명 → git:https://github.com 삭제

# 방법 2: CMD 명령어 사용
cmdkey /list                  # 현재 저장된 자격증명 목록 확인
cmdkey /delete:git:https://github.com       # github 자격증명 삭제
# 또는
cmdkey /delete:LegacyGeneric:git:https://github.com

# 방법 3: 빠른 실행
rundll32.exe keymgr.dll,KRShowKeyMgr   # 자격증명 관리자 바로 실행
```

## 📁 작업 폴더 구조
```
2024-jshs-projects/
    ├── student1@example.com/
    │   ├── 과제1/
    │   ├── 과제2/
    │   └── README.md
    ├── student2@example.com/
    │   ├── 과제1/
    │   └── 과제2/
    └── student3@example.com/
        ├── 과제1/
        └── 과제2/
```

## ⚠️ 주의사항
1. 반드시 자신의 이메일 이름 폴더 안에서만 작업하세요
2. 다른 학생의 폴더는 절대 건드리지 마세요
3. 수업 종료 시 반드시 자격증명을 삭제하세요

## 🆘 문제 해결
```bash
# 1. 잘못된 폴더에서 작업한 경우
cd ../..  # 상위 폴더로 이동
cd your.email@example.com

# 2. 변경사항 취소가 필요한 경우
git restore .

# 3. 완전 초기화가 필요한 경우
cd ..
rm -rf your.email@example.com
mkdir your.email@example.com
cd your.email@example.com
```

## 💡 유용한 명령어
```bash
# 상태 확인
git status

# 변경사항 확인
git diff

# 작업 이력 확인
git log --oneline

# 원격 저장소 확인
git remote -v
```

## 🔍 작업 확인하기
1. 웹브라우저에서 https://github.com/timefullkr/2024-jshs-projects 접속
2. 자신의 이메일 폴더로 이동
3. 업로드된 파일 확인

## ⚡ 빠른 명령어 요약
```bash
# 시작할 때
git update  (또는 git pull origin main)

# 저장할 때
git save
git push origin main

# 종료할 때
자격증명 삭제 필수!
```
