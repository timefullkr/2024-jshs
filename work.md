
# 실습-01(work-01) 
### 커서AI 열기를합니다.
### 메뉴>보기> 터미널 창을 엽니다.
#### github의 timefullkr계정의 2024-jshs-projects 저장소의 내용을 동기화(복사)합니다.

```
 git clone https://github.com/timefullkr/2024-jshs-projects.git
```
### 자신의 폴더로 갑니다.
```
cd C:\작업폴더\2024-jshs-projects\메일주소
```
### 오슬 실습할 폴더 (work-01)를 만듭니다.
상단 폴더명 오른쪽 폴더 만들기 클릭 생성 
or  
터미널 창에서 생성 
```
C:\작업폴더\2024-jshs-projects\메일주소>md work-01
```

### 메뉴>보기> 터미널 창을 열어 오늘 실습할 폴더(wokr-01)로 이동합니다.
```
C:\작업폴더\2024-jshs-projects\메일주소>cd work-01
```
### 가상환경을 만듭니다.(실습할 폴더 새로생성할때 처음에만) 
- 사용할 파이선을 선택하라는 메시지가 나올 수 있습니다
```
python -m venv venv
```
### 가상환경으로 이동합니다.
```
.\venv\Scripts\activate
```
- PS C:작업폴더2024-jshs-projects\자신의 이메일\work-01> python -m venv venv
- PS C:\작업폴더\2024-jshs-projects\자신의 이메일\work-01> .\venv\Scripts\activate
- (venv) PS C:\작업폴더\2024-jshs-projects\자신의 이메일\work-01> **최종 이렇게 나오면 성공**

### wokr-01 폴더에서 app.py 빈파일을 만듭니다.
### ctrl + k -> 
```
fastapi 웹 서버를 만들어주세요
'/' 접속시 /templates/index.html
8000포트 사용
소스 변경 반영되게
필요한 폴더가 없는 경우 폴더 생성
```
다음처럼 소스가 제안됩니다.
```python
import os
from fastapi import FastAPI, Request
from fastapi.responses import HTMLResponse
from fastapi.staticfiles import StaticFiles
from fastapi.templating import Jinja2Templates
import uvicorn

# 필요한 디렉토리 생성
if not os.path.exists("templates"):
    os.makedirs("templates")

app = FastAPI()

# 템플릿 설정
templates = Jinja2Templates(directory="templates")

@app.get("/", response_class=HTMLResponse)
async def read_root(request: Request):
    return templates.TemplateResponse("index.html", {"request": request})

if __name__ == "__main__":
    uvicorn.run("app:app", host="0.0.0.0", port=8000, reload=True)
```
### 터미널 창에서 ctrl + k -> 
```
현재 코드에 설해야할 라이브러이 설치방법
```
다음 처럼 나옵니다.
```
 pip install fastapi jinja2 uvicorn
```

### templates/index.html 만들고 적당한 메시지 입력(수작업으로)
예시
```
안녕하세요 웹 세계에 오신 것을 환영합니다.
```
### 오른쪽 상단에 ▶ 를 클리하여 실행합니다.
### http://localhost:8000  접속하여 
우리가 작성한 메시지가 나오면 성공

### 터미널창에서 ctrl+C 중지할 수 있습니다.

### 다음 내용들을 하나씩 AI 요청차로 코드를 추가해서 적용하고 확인 해본다
- 처음 시작시 터미널창에 접속할 수 있는 서버ip를 표시
- index.html  내용에 접속자의 ip와 현재 서버 일시를 나타나게

### 실습 스텝 종료시

#### 현재 가상환경에 설치된 라이브러리는 업로드가 안됩니다. 
현재 라이브러리 목록을 만들어 업로드에 포함 해야합니다.
다음 명령어로 requirements.txt 파일이 만들어 짐니다.
```
pip freeze > requirements.txt
```
나중에 다른 곳에서 리이브러리 복원 설치 할때 사용하는 명령어 
```
pip install -r requirements.txt
```
#### GitHub 전송하기
```
git add .
git commit -m "작업내용 설명"
git push origin main
```

### 다음 사이트로 가서 전송내용 확인 
```
https://github.com/timefullkr/2024-jshs-projects.git
```
### 실습종료

# 실습-02(work-02) 
