# =============================================
# GitHub 저장소 연결 스크립트
# 실행 방법: PowerShell에서 이 파일이 있는 폴더로 이동 후
#            .\git_setup.ps1 입력
# =============================================

Write-Host "=== GitHub 저장소 연결 시작 ===" -ForegroundColor Cyan

# 1. git 초기화
Write-Host "`n[1/6] git 초기화 중..." -ForegroundColor Yellow
git init

# 2. 사용자 정보 설정
Write-Host "`n[2/6] 사용자 정보 설정 중..." -ForegroundColor Yellow
git config user.name "pbs1105"
git config user.email "pbaesun@gmail.com"

# 3. 파일 전체 추가
Write-Host "`n[3/6] 파일 추가 중..." -ForegroundColor Yellow
git add .
git status

# 4. 첫 번째 커밋
Write-Host "`n[4/6] 첫 번째 커밋 생성 중..." -ForegroundColor Yellow
git commit -m "첫 번째 커밋"

# 5. 브랜치 이름을 main으로 변경 (GitHub 기본값)
Write-Host "`n[5/6] 브랜치 설정 중..." -ForegroundColor Yellow
git branch -M main

# 6. 원격 저장소 연결
Write-Host "`n[6/6] GitHub 저장소 연결 중..." -ForegroundColor Yellow
git remote add origin https://github.com/pbs1105/git-.git

Write-Host "`n=== 설정 완료! ===" -ForegroundColor Green
Write-Host "이제 아래 명령어로 파일을 GitHub에 올리세요:" -ForegroundColor Green
Write-Host ""
Write-Host "  git push -u origin main" -ForegroundColor White
Write-Host ""
Write-Host "※ push 실행 시 GitHub 로그인 창이 뜨면:" -ForegroundColor Yellow
Write-Host "   - Username: pbs1105" -ForegroundColor White
Write-Host "   - Password: 준비한 Personal Access Token 입력" -ForegroundColor White
