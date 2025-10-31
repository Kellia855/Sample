# MINDBRIDGE Setup Script for Windows PowerShell
# Run this script to set up the project

Write-Host "==================================" -ForegroundColor Cyan
Write-Host "MINDBRIDGE Setup Script" -ForegroundColor Cyan
Write-Host "==================================" -ForegroundColor Cyan
Write-Host ""

# Check Python installation
Write-Host "Checking Python installation..." -ForegroundColor Yellow
try {
    $pythonVersion = python --version
    Write-Host "✓ Python found: $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Python not found. Please install Python 3.8 or higher." -ForegroundColor Red
    exit 1
}

# Create virtual environment
Write-Host ""
Write-Host "Creating virtual environment..." -ForegroundColor Yellow
if (Test-Path "venv") {
    Write-Host "Virtual environment already exists." -ForegroundColor Yellow
} else {
    python -m venv venv
    Write-Host "✓ Virtual environment created" -ForegroundColor Green
}

# Activate virtual environment
Write-Host ""
Write-Host "Activating virtual environment..." -ForegroundColor Yellow
& ".\venv\Scripts\Activate.ps1"
Write-Host "✓ Virtual environment activated" -ForegroundColor Green

# Upgrade pip
Write-Host ""
Write-Host "Upgrading pip..." -ForegroundColor Yellow
python -m pip install --upgrade pip
Write-Host "✓ pip upgraded" -ForegroundColor Green

# Install dependencies
Write-Host ""
Write-Host "Installing dependencies..." -ForegroundColor Yellow
pip install -r requirements.txt
Write-Host "✓ Dependencies installed" -ForegroundColor Green

# Create .env file if it doesn't exist
Write-Host ""
Write-Host "Checking .env file..." -ForegroundColor Yellow
if (-not (Test-Path ".env")) {
    Write-Host "Creating .env file..." -ForegroundColor Yellow
    @"
SECRET_KEY=django-insecure-change-this-in-production-$(Get-Random)
DEBUG=True
DB_NAME=mindbridge_db
DB_USER=root
DB_PASSWORD=
DB_HOST=localhost
DB_PORT=3306
"@ | Out-File -FilePath ".env" -Encoding UTF8
    Write-Host "✓ .env file created - PLEASE UPDATE WITH YOUR DATABASE PASSWORD!" -ForegroundColor Green
} else {
    Write-Host "✓ .env file already exists" -ForegroundColor Green
}

# Create directories
Write-Host ""
Write-Host "Creating necessary directories..." -ForegroundColor Yellow
$directories = @(
    "static",
    "static/css",
    "static/js",
    "static/images",
    "media",
    "media/library",
    "media/library/covers",
    "media/library/pdfs",
    "media/events"
)

foreach ($dir in $directories) {
    if (-not (Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
        Write-Host "  Created: $dir" -ForegroundColor Gray
    }
}
Write-Host "✓ Directories created" -ForegroundColor Green

Write-Host ""
Write-Host "==================================" -ForegroundColor Cyan
Write-Host "Setup Complete!" -ForegroundColor Green
Write-Host "==================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Update the .env file with your MySQL password" -ForegroundColor White
Write-Host "2. Create MySQL database:" -ForegroundColor White
Write-Host "   mysql -u root -p" -ForegroundColor Gray
Write-Host "   CREATE DATABASE mindbridge_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;" -ForegroundColor Gray
Write-Host "3. Run migrations:" -ForegroundColor White
Write-Host "   python manage.py makemigrations" -ForegroundColor Gray
Write-Host "   python manage.py migrate" -ForegroundColor Gray
Write-Host "4. Create superuser:" -ForegroundColor White
Write-Host "   python manage.py createsuperuser" -ForegroundColor Gray
Write-Host "5. Run the development server:" -ForegroundColor White
Write-Host "   python manage.py runserver" -ForegroundColor Gray
Write-Host ""
Write-Host "Visit http://127.0.0.1:8000 to see your application!" -ForegroundColor Cyan
Write-Host ""
