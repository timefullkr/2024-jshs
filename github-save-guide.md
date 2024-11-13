# Git 작업 저장 가이드

## 1️⃣ 일반적인 저장 방법
```bash
# 모든 변경사항 저장하기
git add .
git commit -m "수업 내용 저장"
git push origin main
```

## 2️⃣ 선택적 저장 방법
```bash
# 1. 특정 파일만 저장
git add index.html
git add style.css

# 2. 특정 폴더만 저장
git add images/
git add css/

# 3. 특정 종류의 파일만 저장
git add *.html          # HTML 파일만
git add *.css          # CSS 파일만
git add *.js           # JavaScript 파일만
```

## 3️⃣ 저장 단계별 확인
```bash
# 1. 변경된 파일 확인
git status

# 2. 변경 내용 자세히 보기
git diff

# 3. 저장할 파일 선택 후
git add 선택한파일

# 4. 최종 저장
git commit -m "변경 내용 설명"
git push origin main
```

## 4️⃣ 실수했을 때 되돌리기
```bash
# 1. add 취소하기
git restore --staged .    # 모든 파일 add 취소
git restore --staged 파일명  # 특정 파일만 add 취소

# 2. 변경사항 자체를 취소하기
git restore .            # 모든 파일 변경 취소
git restore 파일명        # 특정 파일만 변경 취소
```

## ⚠️ 주의사항
1. commit 메시지는 나중에 알아볼 수 있게 자세히 쓰기
2. push 전에 꼭 add와 commit 했는지 확인
3. 변경 취소는 되돌릴 수 없으니 신중하게 하기

## 💡 유용한 팁
1. 저장하기 전에 항상 `git status`로 확인하기
2. 큰 변경사항은 중간중간 저장하기
3. 실험적인 변경은 다른 브랜치에서 하기

## 🚫 자주 하는 실수
```bash
# 1. add 없이 commit
git commit -m "메시지"  # ❌ 작동 안 함

# 2. commit 없이 push
git add .
git push origin main   # ❌ 작동 안 함

# 3. 올바른 순서
git add .
git commit -m "메시지"
git push origin main   # ✅ 정상 작동
```
