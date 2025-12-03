@echo off
title Selective Folder Backup

:: --- 1. SETTING VARIABEL TANGGAL UNTUK NAMA FOLDER BACKUP ---
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do (
    set TANGGAL=%%c-%%a-%%b
)
for /f "tokens=1-2 delims=:" %%a in ('time /t') do (
    set WAKTU=%%a%%b
)
set NAMA_BACKUP=Backup_%TANGGAL%_%WAKTU%

echo.
echo ====================================
echo == SCRIPT BACKUP FOLDER SELEKTIF ===
echo ====================================
echo.

:: --- 2. MEMINTA PATH FOLDER SUMBER ---
:INPUT_SUMBER
set "SUMBER="
set /p "SUMBER=Masukkan path folder sumber yang ingin di-backup : "

:: Memeriksa apakah input SUMBER kosong
if "%SUMBER%"=="" goto INPUT_SUMBER

:: Memeriksa apakah folder sumber ada
if not exist "%SUMBER%" (
    echo.
    echo ERROR: Folder "%SUMBER%" tidak ditemukan.
    goto INPUT_SUMBER
)

echo.

:: --- 3. MEMINTA PATH FOLDER TUJUAN (DESTINASI) ---
:INPUT_TUJUAN
set "TUJUAN="
set /p "TUJUAN=Masukkan path folder tujuan backup : "

:: Memeriksa apakah input TUJUAN kosong
if "%TUJUAN%"=="" goto INPUT_TUJUAN

:: Membuat folder tujuan jika belum ada
if not exist "%TUJUAN%" (
    mkdir "%TUJUAN%"
    echo Folder tujuan "%TUJUAN%" dibuat.
)

:: Menambahkan subfolder dengan tanggal dan waktu ke tujuan
set "DESTINASI_AKHIR=%TUJUAN%\%NAMA_BACKUP%"
mkdir "%DESTINASI_AKHIR%"

echo.
echo.
echo --- RINGKASAN BACKUP ---
echo Sumber: %SUMBER%
echo Tujuan: %DESTINASI_AKHIR%
echo.

:: --- 4. EKSEKUSI BACKUP MENGGUNAKAN XCOPY ---
echo ** Memulai proses backup... **
echo.

:: XCOPY:
:: /E - Menyalin direktori dan subdirektori, termasuk yang kosong.
:: /I - Jika tujuan tidak ada dan menyalin lebih dari satu file, anggap tujuan adalah direktori.
:: /H - Menyalin file sistem dan file tersembunyi.
:: /K - Menyalin atribut. (Default XCOPY akan mereset atribut Read-only).
:: /Y - Menekan prompt konfirmasi untuk menimpa file tujuan yang sudah ada.
XCOPY "%SUMBER%" "%DESTINASI_AKHIR%" /E /I /H /K /Y

echo.
if ERRORLEVEL 1 (
    echo ** ERROR: Proses backup gagal atau ada kesalahan! **
) else (
    echo ** Backup Selesai dengan Sukses! **
)
echo.

:: --- 5. MENJEDA DAN KELUAR ---
pause
exit