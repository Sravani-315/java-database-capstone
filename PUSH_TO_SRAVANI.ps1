# Script to push code to Sravani-315 repository

Write-Host "=== Pushing Code to Sravani-315 Repository ===" -ForegroundColor Green

# Step 1: Clone the Sravani repository
Write-Host "`nStep 1: Cloning Sravani repository..." -ForegroundColor Yellow
cd "s:\"
if (Test-Path "sravani-repo") {
    Remove-Item -Recurse -Force "sravani-repo"
}
git clone https://github.com/Sravani-315/java-database-capstone.git sravani-repo

# Step 2: Copy files
Write-Host "`nStep 2: Copying files..." -ForegroundColor Yellow
cd sravani-repo

# Remove everything except .git
Get-ChildItem -Exclude ".git" | Remove-Item -Recurse -Force

# Copy all files from current repo
Copy-Item -Path "s:\Java capstone\*" -Destination "." -Recurse -Exclude ".git" -Force

# Step 3: Commit and push
Write-Host "`nStep 3: Committing and pushing..." -ForegroundColor Yellow
git add -A
git commit -m "Initial commit: SmartCare Clinic Management System with correct package structure"
git push origin main

Write-Host "`n=== DONE! ===" -ForegroundColor Green
Write-Host "All files have been pushed to https://github.com/Sravani-315/java-database-capstone" -ForegroundColor Green

# Go back to original directory
cd "s:\Java capstone"
