@echo off
setlocal enabledelayedexpansion

REM ----------------------------------------------------
REM --- VARIABEL LINGKUNGAN ---
REM ----------------------------------------------------
set "SOURCE_DIR=%USERPROFILE%\Desktop\SimulasiDrive_D"
set "DEST_DIR=%USERPROFILE%\Desktop\SimulasiDrive_C"
set "LOG_FILE=%USERPROFILE%\Desktop\recovery_log.txt"
set "VERIFY_LOG=%USERPROFILE%\Desktop\verification_log.txt"

REM ----------------------------------------------------
REM --- Langkah 1: Recovery Data (Filter & Progress) ---
REM ----------------------------------------------------

echo [1/3] Melakukan Recovery Data (Hanya *.pdf & *.docx) DENGAN PROGRESS...
echo.

REM ROBOCÓPY DENGAN FILTER EKSTENSI DAN PROGRESS
REM /E: Salin Subfolder | /Z: Mode Restartable | /V: Verbose | /TEE: Output ke layar dan Log
REM /ETA: Menampilkan Estimated Time | /R:3 /W:5: Coba 3 kali, Tunggu 5 detik
robocopy "%SOURCE_DIR%" "%DEST_DIR%" *.pdf *.docx /E /Z /V /ETA /R:3 /W:5 /LOG:"%LOG_FILE%" /TEE

echo.

REM ----------------------------------------------------
REM --- Langkah 2: Verifikasi Checksum / File Size ---
REM ----------------------------------------------------

echo [2/3] Melakukan Verifikasi Data (Checksum / File Size)...
echo Hasil verifikasi akan dicatat di verification_log.txt.

REM ROBOCOPY VERIFIKASI
REM /L: List Only (JANGAN Copy) | /V: Verbose
REM /IS: Include Same Files (Bandingkan) | /IT: Include Tweaked Files
REM Perintah ini membandingkan data di Sumber dan Tujuan. Jika log kosong/bersih, verifikasi berhasil.
robocopy "%SOURCE_DIR%" "%DEST_DIR%" *.pdf *.docx /E /V /L /IS /IT /LOG:"%VERIFY_LOG%"

echo. >> "%LOG_FILE%"
echo ---------------------------------------------------------------- >> "%LOG_FILE%"
echo HASIL VERIFIKASI (Cek verification_log.txt): >> "%LOG_FILE%"
echo Robocopy membandingkan file Sumber dan Tujuan. >> "%LOG_FILE%"
echo Jika file yang tercatat di verification_log.txt sedikit (hanya direktori), maka verifikasi berhasil. >> "%LOG_FILE%"
echo ---------------------------------------------------------------- >> "%LOG_FILE%"

echo [Selesai] Verifikasi dicatat di verification_log.txt.
echo.

REM ----------------------------------------------------
REM --- Langkah 3: Kompres Hasil Backup ke .ZIP ---
REM ----------------------------------------------------

echo.
echo [3/3] Melanjutkan ke Kompresi File ZIP...

REM Dapatkan string tanggal (tahun-bulan-tanggal) yang aman dari regional
for /f "tokens=1-3 delims=/ " %%a in ('date /t') do (
    REM Asumsi format regional Indonesia: DD/MM/YYYY
    set DAY=%%a
    set MONTH=%%b
    set YEAR=%%c
)
REM Cek apakah DATE /T mengembalikan format lain (misal, Mon 12/01/2025)
if defined YEAR (
    set DATE_STR=%YEAR%%MONTH%%DAY%
) else (
    REM Coba format regional Amerika Serikat (biasa terjadi di CMD)
    for /f "tokens=2-4 delims=/ " %%a in ('date /t') do set DATE_STR=%%c%%a%%b
)

REM Dapatkan waktu (HHMM)
for /f "tokens=1-4 delims=.: " %%h in ("%time%") do set CURRENT_TIME=%%h%%i

REM Membuat Nama File ZIP Unik
set "FILENAME=Backup_Recovery_%DATE_STR%_%CURRENT_TIME%.zip"

REM Lokasi File ZIP akan disimpan (di Desktop)
set "DEST_ZIP_PATH=%USERPROFILE%\Desktop\%FILENAME%"

REM Perintah PowerShell untuk Kompresi
powershell -command "Compress-Archive -Path '%DEST_DIR%\*' -DestinationPath '%DEST_ZIP_PATH%' -Force"

echo.

echo =========================================================
echo | TUGAS 2 SELESAI |
echo =========================================================
echo Hasil ZIP tersimpan di: %DEST_ZIP_PATH%
echo Hasil Log Recovery: %LOG_FILE%
echo Hasil Log Verifikasi: %VERIFY_LOG%
echo.
pause