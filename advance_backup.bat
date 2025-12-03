@echo off
setlocal ENABLEDELAYEDEXPANSION

:: ------------------------------------------
:: 1. KONFIGURASI PENTING (HARAP UBAH SESUAI KEBUTUHAN ANDA)
:: ------------------------------------------

set "SOURCE_DIR=C:\Users\Alisya\Desktop\SimulasiDrive_D" 
set "DEST_DIR=D:\FolderBackup"

:: KOREKSI SINTAKS PENANGANAN TANGGAL/WAKTU UNTUK NAMA FILE LOG
FOR /F "tokens=1-4 delims=/ " %%i in ("%date%") do set D=%%k%%j%%i
FOR /F "tokens=1-4 delims=.:," %%i in ("%time%") do set T=%%i%%j%%k
set "LOG_FILE=%DEST_DIR%\backup_log_%D%_%T%.txt"

:: Konfigurasi Email (BLAT PATH SAJA - Kredensial sudah di-install via CMD)
set "SENDER_EMAIL=alishalukman3@gmail.com"
set "RECIPIENT_EMAIL=alisyaalisha35@gmail.com"
set "EMAIL_SUBJECT=LAPORAN BACKUP OTOMATIS"

:: ** PASTIKAN PATH INI SESUAI LOKASI BLAT.EXE **
set "BLAT_PATH=C:\Users\Alisya\Blat\blat.exe" 

:: ------------------------------------------
:: 2. PROSES BACKUP (ROBOCOPY UNTUK INCREMENTAL)
:: ------------------------------------------

echo.
echo --- MEMULAI INCREMENTAL BACKUP ---
echo Sumber: %SOURCE_DIR%
echo Tujuan: %DEST_DIR%
echo Waktu Mulai: %date% %time%
echo Log File: %LOG_FILE%
echo ------------------------------------------

robocopy "%SOURCE_DIR%" "%DEST_DIR%" /E /XO /W:5 /R:3 /NP /TEE /LOG+:"%LOG_FILE%"

if %errorlevel% leq 7 (
    set "BACKUP_STATUS=SUKSES"
    echo.
    echo +++ BACKUP BERHASIL DILAKUKAN +++
    echo.
) else (
    set "BACKUP_STATUS=GAGAL"
    echo.
    echo --- ERROR: BACKUP GAGAL ATAU ADA MASALAH ---
    echo.
)

:: ------------------------------------------
:: 3. NOTIFIKASI EMAIL (MENGGUNAKAN PROFIL BLAT)
:: ------------------------------------------

echo --- MENGIRIM NOTIFIKASI EMAIL ---

set "EMAIL_BODY=Backup telah selesai! Status: %BACKUP_STATUS%. Detail log: %LOG_FILE%"

:: PANGGIL BLAT DENGAN PATH LENGKAP - TIDAK PERLU KREDENSIAL LAGI
"%BLAT_PATH%" -t "%RECIPIENT_EMAIL%" -s "%EMAIL_SUBJECT% - %BACKUP_STATUS%" -body "%EMAIL_BODY%" -f "%SENDER_EMAIL%" -log "%DEST_DIR%\blat_log.txt"

echo.
echo --- PROSES SELESAI ---

endlocal
pause