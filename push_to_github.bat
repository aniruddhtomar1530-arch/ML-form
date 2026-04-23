@echo off
cd /d "c:\Users\Admin\OneDrive\Desktop\breast_cancer"

echo Setting Git user configuration...
"C:\Program Files\Git\bin\git.exe" config user.email "aniruddhtomar1530@gmail.com"
"C:\Program Files\Git\bin\git.exe" config user.name "aniruddhtomar1530-arch"

echo Adding files...
"C:\Program Files\Git\bin\git.exe" add .

echo Committing changes...
"C:\Program Files\Git\bin\git.exe" commit -m "Update app.py for Render deployment with Gunicorn support and add gunicorn to requirements.txt"

echo Pushing to GitHub...
"C:\Program Files\Git\bin\git.exe" push -u origin master

echo Done! Your changes have been pushed to GitHub.
pause
