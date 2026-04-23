@echo off
cd /d "c:\Users\Admin\OneDrive\Desktop\breast_cancer"

echo Setting Git user configuration...
"C:\Program Files\Git\bin\git.exe" config user.email "aniruddhtomar1530@gmail.com"
"C:\Program Files\Git\bin\git.exe" config user.name "aniruddhtomar1530-arch"

echo Removing existing remote if any...
"C:\Program Files\Git\bin\git.exe" remote remove origin

echo Adding remote origin...
"C:\Program Files\Git\bin\git.exe" remote add origin https://github.com/aniruddhtomar1530-arch/ML-form.git

echo Adding files...
"C:\Program Files\Git\bin\git.exe" add .

echo Committing...
"C:\Program Files\Git\bin\git.exe" commit -m "Initial commit - Breast Cancer Prediction ML Form"

echo Pushing to GitHub...
"C:\Program Files\Git\bin\git.exe" push -u origin master

echo Done! Your project has been pushed to GitHub.
pause
