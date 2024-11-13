# work-01 
### 커서AI 열기를합니다.
### 메뉴>보기> 터미널 창을 엽니다.
#### github의 timefullkr계정의 2024-jshs-projects 저장소의 내용을 동기화(복사)합니다.
```
 git clone https://github.com/timefullkr/2024-jshs-projects.git
```
### 오슬 실습할 폴더 (work-01)를 만듭니다.(상단 폴더명 오른쪽 폴더 만들기 클릭) 
### 메뉴>보기> 터미널 창을 열어 오늘 실습할 폴더(wokr-01)로 이동합니다.
```
cd wokr-01
```
### 가상환경을 만듭니다.(실습할 폴더 새로생성할때 처음에만) 
- 사용할 파이선을 선택하라는 메시지가 나올 수 있습니다
```
python -m venv venv
python.exe -m pip install --upgrade pip
```
### 가상환경으로 이동합니다.
```
.\venv\Scripts\activate
```
- PS C:\work\2024-jshs-projects\timefullkr@naver.com\work-01> python -m venv venv
- PS C:\work\2024-jshs-projects\timefullkr@naver.com\work-01> python.exe -m pip install --upgrade pip
- PS C:\work\2024-jshs-projects\timefullkr@naver.com\work-01> .\venv\Scripts\activate
- (venv) PS C:\work\2024-jshs-projects\timefullkr@naver.com\work-01> **최종 이렇게 나오면 성공**

### wokr-01 폴더에서 app.py 빈파일을 만듭니다.
### ctrl + k 
```
fastapi 웹 서버를 만들어주세요
'/' 접속시 /templates/index.html
host ip pc ip 로
8000포트
소스 변경 반영되게
```
```
from fastapi import FastAPI, Request
from fastapi.templating import Jinja2Templates
from fastapi.responses import HTMLResponse
import uvicorn

app = FastAPI()
templates = Jinja2Templates(directory="templates")

@app.get("/", response_class=HTMLResponse)
async def index(request: Request):
    return templates.TemplateResponse("index.html", {"request": request})

if __name__ == "__main__":
    uvicorn.run("app:app", host="0.0.0.0", port=8000, reload=True)
```
