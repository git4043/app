@echo off
echo ==============================================
echo Automatic GitHub Publisher
echo ==============================================
echo.
echo Setting up your local repository...
git init
echo node_modules/ > .gitignore
echo bin/ >> .gitignore
echo obj/ >> .gitignore
echo *.db >> .gitignore
echo *.db-shm >> .gitignore
echo *.db-wal >> .gitignore
git add .
git commit -m "Initial Release of Invitation App"
echo.
echo ----------------------------------------------
echo Logging into GitHub...
echo ----------------------------------------------
echo A window will appear. Please approve the login to GitHub!
gh auth login -w
echo.
echo ----------------------------------------------
echo Creating Repository & Publishing...
echo ----------------------------------------------
gh repo create InvitationApp --public --source=. --push
echo.
echo ==============================================
echo SUCCESS! Your Repository is live!
echo ==============================================
gh repo view -w
pause
