@echo off
:: Dosyanın çalıştığı klasörü aktif dizin yap
cd /d "%~dp0"

:: 1. Git Kullanıcı Ayarlarını Yapılandır
git config --global user.name "KeineLust10"
git config --global user.email "enginmamu1@gmail.com"

:: 2. Doğru branch'e geçiş yap
git checkout KeineLust10-yama-2

:: 3. Ollama'nın düzenlediği dosyayı ekle
git add .github/workflows/ci.yml

:: 4. Değişikliği commit et
git commit -m "Ollama ile pytest adimi yorum satirina alindi"

:: 5. GitHub'a pushla
git push origin KeineLust10-yama-2

echo.
echo Islem tamamlandi! GitHub sayfasini kontrol edebilirsin.
pause