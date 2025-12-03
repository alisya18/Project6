@echo off

REM ----------------------------------------------------
REM --- Bagian 1: Inisialisasi Drive Simulasi (D & C) ---
REM ----------------------------------------------------

REM Tentukan lokasi utama (Desktop)
set SIM_ROOT=%USERPROFILE%\Desktop

echo Membuat Drive Simulasi di %SIM_ROOT%...
mkdir "%SIM_ROOT%\SimulasiDrive_D"
mkdir "%SIM_ROOT%\SimulasiDrive_C"

echo Membuat Struktur Folder di SimulasiDrive_D (Sumber)...
cd /d "%SIM_ROOT%\SimulasiDrive_D"

REM ----------------------------------------------------
REM --- Bagian 2: Membuat 10 Folder Utama dan 30 Subfolder ---
REM ----------------------------------------------------

mkdir Folder_A
mkdir Folder_A\Subfolder_A1
mkdir Folder_A\Subfolder_A2
mkdir Folder_A\Subfolder_A3

mkdir Folder_B
mkdir Folder_B\Subfolder_B1
mkdir Folder_B\Subfolder_B2
mkdir Folder_B\Subfolder_B3

mkdir Folder_C
mkdir Folder_C\Subfolder_C1
mkdir Folder_C\Subfolder_C2
mkdir Folder_C\Subfolder_C3

mkdir Folder_D
mkdir Folder_D\Subfolder_D1
mkdir Folder_D\Subfolder_D2
mkdir Folder_D\Subfolder_D3

mkdir Folder_E
mkdir Folder_E\Subfolder_E1
mkdir Folder_E\Subfolder_E2
mkdir Folder_E\Subfolder_E3

mkdir Folder_F
mkdir Folder_F\Subfolder_F1
mkdir Folder_F\Subfolder_F2
mkdir Folder_F\Subfolder_F3

mkdir Folder_G
mkdir Folder_G\Subfolder_G1
mkdir Folder_G\Subfolder_G2
mkdir Folder_G\Subfolder_G3

mkdir Folder_H
mkdir Folder_H\Subfolder_H1
mkdir Folder_H\Subfolder_H2
mkdir Folder_H\Subfolder_H3

mkdir Folder_I
mkdir Folder_I\Subfolder_I1
mkdir Folder_I\Subfolder_I2
mkdir Folder_I\Subfolder_I3

mkdir Folder_J
mkdir Folder_J\Subfolder_J1
mkdir Folder_J\Subfolder_J2
mkdir Folder_J\Subfolder_J3

REM ----------------------------------------------------
REM --- Bagian 3: Membuat File Simulasi (180 File) ---
REM ----------------------------------------------------

echo Membuat file simulasi bervariasi (PDF, DOCX, TXT, dll.)...

fsutil file createnew "Folder_A\Subfolder_A1\dokumen_1_A.pdf" 1024
fsutil file createnew "Folder_A\Subfolder_A1\data_1_A.docx" 2048
fsutil file createnew "Folder_A\Subfolder_A1\catatan_1_A.txt" 3072
fsutil file createnew "Folder_A\Subfolder_A1\laporan_1_A.csv" 4096
fsutil file createnew "Folder_A\Subfolder_A1\aplikasi_1_A.bat" 5120

fsutil file createnew "Folder_A\Subfolder_A2\dokumen_2_A.pdf" 1024
fsutil file createnew "Folder_A\Subfolder_A2\data_2_A.docx" 2048
fsutil file createnew "Folder_A\Subfolder_A2\catatan_2_A.txt" 3072
fsutil file createnew "Folder_A\Subfolder_A2\laporan_2_A.csv" 4096
fsutil file createnew "Folder_A\Subfolder_A2\aplikasi_2_A.bat" 5120

fsutil file createnew "Folder_A\Subfolder_A3\dokumen_3_A.pdf" 1024
fsutil file createnew "Folder_A\Subfolder_A3\data_3_A.docx" 2048
fsutil file createnew "Folder_A\Subfolder_A3\catatan_3_A.txt" 3072
fsutil file createnew "Folder_A\Subfolder_A3\laporan_3_A.csv" 4096
fsutil file createnew "Folder_A\Subfolder_A3\aplikasi_3_A.bat" 5120

fsutil file createnew "Folder_A\database_1.db" 3072
fsutil file createnew "Folder_A\cofig_1.ini" 2048

fsutil file createnew "Folder_B\Subfolder_B1\dokumen_1_B.pdf" 1024
fsutil file createnew "Folder_B\Subfolder_B1\data_1_B.docx" 2048
fsutil file createnew "Folder_B\Subfolder_B1\catatan_1_B.txt" 3072
fsutil file createnew "Folder_B\Subfolder_B1\laporan_1_B.csv" 4096
fsutil file createnew "Folder_B\Subfolder_B1\aplikasi_1_B.bat" 5120

fsutil file createnew "Folder_B\Subfolder_B2\dokumen_2_B.pdf" 1024
fsutil file createnew "Folder_B\Subfolder_B2\data_2_B.docx" 2048
fsutil file createnew "Folder_B\Subfolder_B2\catatan_2_B.txt" 3072
fsutil file createnew "Folder_B\Subfolder_B2\laporan_2_B.csv" 4096
fsutil file createnew "Folder_B\Subfolder_B2\aplikasi_2_B.bat" 5120

fsutil file createnew "Folder_B\Subfolder_B3\dokumen_3_B.pdf" 1024
fsutil file createnew "Folder_B\Subfolder_B3\data_3_B.docx" 2048
fsutil file createnew "Folder_B\Subfolder_B3\catatan_3_B.txt" 3072
fsutil file createnew "Folder_B\Subfolder_B3\laporan_3_B.csv" 4096
fsutil file createnew "Folder_B\Subfolder_B3\aplikasi_3_B.bat" 5120

fsutil file createnew "Folder_B\database_2.db" 3072
fsutil file createnew "Folder_B\cofig_2.ini" 2048

fsutil file createnew "Folder_C\Subfolder_C1\dokumen_1_C.pdf" 1024
fsutil file createnew "Folder_C\Subfolder_C1\data_1_C.docx" 2048
fsutil file createnew "Folder_C\Subfolder_C1\catatan_1_C.txt" 3072
fsutil file createnew "Folder_C\Subfolder_C1\laporan_1_C.csv" 4096
fsutil file createnew "Folder_C\Subfolder_C1\aplikasi_1_C.bat" 5120

fsutil file createnew "Folder_C\Subfolder_C2\dokumen_2_C.pdf" 1024
fsutil file createnew "Folder_C\Subfolder_C2\data_2_C.docx" 2048
fsutil file createnew "Folder_C\Subfolder_C2\catatan_2_C.txt" 3072
fsutil file createnew "Folder_C\Subfolder_C2\laporan_2_C.csv" 4096
fsutil file createnew "Folder_C\Subfolder_C2\aplikasi_2_C.bat" 5120

fsutil file createnew "Folder_C\Subfolder_C3\dokumen_3_C.pdf" 1024
fsutil file createnew "Folder_C\Subfolder_C3\data_3_C.docx" 2048
fsutil file createnew "Folder_C\Subfolder_C3\catatan_3_C.txt" 3072
fsutil file createnew "Folder_C\Subfolder_C3\laporan_3_C.csv" 4096
fsutil file createnew "Folder_C\Subfolder_C3\aplikasi_3_C.bat" 5120

fsutil file createnew "Folder_C\database_3.db" 3072
fsutil file createnew "Folder_C\cofig_3.ini" 2048

fsutil file createnew "Folder_D\Subfolder_D1\dokumen_1_D.pdf" 1024
fsutil file createnew "Folder_D\Subfolder_D1\data_1_D.docx" 2048
fsutil file createnew "Folder_D\Subfolder_D1\catatan_1_D.txt" 3072
fsutil file createnew "Folder_D\Subfolder_D1\laporan_1_D.csv" 4096
fsutil file createnew "Folder_D\Subfolder_D1\aplikasi_1_D.bat" 5120

fsutil file createnew "Folder_D\Subfolder_D2\dokumen_2_D.pdf" 1024
fsutil file createnew "Folder_D\Subfolder_D2\data_2_D.docx" 2048
fsutil file createnew "Folder_D\Subfolder_D2\catatan_2_D.txt" 3072
fsutil file createnew "Folder_D\Subfolder_D2\laporan_2_D.csv" 4096
fsutil file createnew "Folder_D\Subfolder_D2\aplikasi_2_D.bat" 5120

fsutil file createnew "Folder_D\Subfolder_D3\dokumen_3_D.pdf" 1024
fsutil file createnew "Folder_D\Subfolder_D3\data_3_D.docx" 2048
fsutil file createnew "Folder_D\Subfolder_D3\catatan_3_D.txt" 3072
fsutil file createnew "Folder_D\Subfolder_D3\laporan_3_D.csv" 4096
fsutil file createnew "Folder_D\Subfolder_D3\aplikasi_3_D.bat" 5120

fsutil file createnew "Folder_D\database_4.db" 3072
fsutil file createnew "Folder_D\cofig_4.ini" 2048

fsutil file createnew "Folder_E\Subfolder_E1\dokumen_1_E.pdf" 1024
fsutil file createnew "Folder_E\Subfolder_E1\data_1_E.docx" 2048
fsutil file createnew "Folder_E\Subfolder_E1\catatan_1_E.txt" 3072
fsutil file createnew "Folder_E\Subfolder_E1\laporan_1_E.csv" 4096
fsutil file createnew "Folder_E\Subfolder_E1\aplikasi_1_E.bat" 5120

fsutil file createnew "Folder_E\Subfolder_E2\dokumen_2_E.pdf" 1024
fsutil file createnew "Folder_E\Subfolder_E2\data_2_E.docx" 2048
fsutil file createnew "Folder_E\Subfolder_E2\catatan_2_E.txt" 3072
fsutil file createnew "Folder_E\Subfolder_E2\laporan_2_E.csv" 4096
fsutil file createnew "Folder_E\Subfolder_E2\aplikasi_2_E.bat" 5120

fsutil file createnew "Folder_E\Subfolder_E3\dokumen_3_E.pdf" 1024
fsutil file createnew "Folder_E\Subfolder_E3\data_3_E.docx" 2048
fsutil file createnew "Folder_E\Subfolder_E3\catatan_3_E.txt" 3072
fsutil file createnew "Folder_E\Subfolder_E3\laporan_3_E.csv" 4096
fsutil file createnew "Folder_E\Subfolder_E3\aplikasi_3_E.bat" 5120

fsutil file createnew "Folder_E\database_5.db" 3072
fsutil file createnew "Folder_E\cofig_5.ini" 2048

fsutil file createnew "Folder_F\Subfolder_F1\dokumen_1_F.pdf" 1024
fsutil file createnew "Folder_F\Subfolder_F1\data_1_F.docx" 2048
fsutil file createnew "Folder_F\Subfolder_F1\catatan_1_F.txt" 3072
fsutil file createnew "Folder_F\Subfolder_F1\laporan_1_F.csv" 4096
fsutil file createnew "Folder_F\Subfolder_F1\aplikasi_1_F.bat" 5120

fsutil file createnew "Folder_F\Subfolder_F2\dokumen_2_F.pdf" 1024
fsutil file createnew "Folder_F\Subfolder_F2\data_2_F.docx" 2048
fsutil file createnew "Folder_F\Subfolder_F2\catatan_2_F.txt" 3072
fsutil file createnew "Folder_F\Subfolder_F2\laporan_2_F.csv" 4096
fsutil file createnew "Folder_F\Subfolder_F2\aplikasi_2_F.bat" 5120

fsutil file createnew "Folder_F\Subfolder_F3\dokumen_3_F.pdf" 1024
fsutil file createnew "Folder_F\Subfolder_F3\data_3_F.docx" 2048
fsutil file createnew "Folder_F\Subfolder_F3\catatan_3_F.txt" 3072
fsutil file createnew "Folder_F\Subfolder_F3\laporan_3_F.csv" 4096
fsutil file createnew "Folder_F\Subfolder_F3\aplikasi_3_F.bat" 5120

fsutil file createnew "Folder_F\database_6.db" 3072
fsutil file createnew "Folder_F\cofig_6.ini" 2048

fsutil file createnew "Folder_G\Subfolder_G1\dokumen_1_G.pdf" 1024
fsutil file createnew "Folder_G\Subfolder_G1\data_1_G.docx" 2048
fsutil file createnew "Folder_G\Subfolder_G1\catatan_1_G.txt" 3072
fsutil file createnew "Folder_G\Subfolder_G1\laporan_1_G.csv" 4096
fsutil file createnew "Folder_G\Subfolder_G1\aplikasi_1_G.bat" 5120

fsutil file createnew "Folder_G\Subfolder_G2\dokumen_2_G.pdf" 1024
fsutil file createnew "Folder_G\Subfolder_G2\data_2_G.docx" 2048
fsutil file createnew "Folder_G\Subfolder_G2\catatan_2_G.txt" 3072
fsutil file createnew "Folder_G\Subfolder_G2\laporan_2_G.csv" 4096
fsutil file createnew "Folder_G\Subfolder_G2\aplikasi_2_G.bat" 5120

fsutil file createnew "Folder_G\Subfolder_G3\dokumen_3_G.pdf" 1024
fsutil file createnew "Folder_G\Subfolder_G3\data_3_G.docx" 2048
fsutil file createnew "Folder_G\Subfolder_G3\catatan_3_G.txt" 3072
fsutil file createnew "Folder_G\Subfolder_G3\laporan_3_G.csv" 4096
fsutil file createnew "Folder_G\Subfolder_G3\aplikasi_3_G.bat" 5120

fsutil file createnew "Folder_G\database_7.db" 3072
fsutil file createnew "Folder_G\cofig_7.ini" 2048

fsutil file createnew "Folder_H\Subfolder_H1\dokumen_1_H.pdf" 1024
fsutil file createnew "Folder_H\Subfolder_H1\data_1_H.docx" 2048
fsutil file createnew "Folder_H\Subfolder_H1\catatan_1_H.txt" 3072
fsutil file createnew "Folder_H\Subfolder_H1\laporan_1_H.csv" 4096
fsutil file createnew "Folder_H\Subfolder_H1\aplikasi_1_H.bat" 5120

fsutil file createnew "Folder_H\Subfolder_H2\dokumen_2_H.pdf" 1024
fsutil file createnew "Folder_H\Subfolder_H2\data_2_H.docx" 2048
fsutil file createnew "Folder_H\Subfolder_H2\catatan_2_H.txt" 3072
fsutil file createnew "Folder_H\Subfolder_H2\laporan_2_H.csv" 4096
fsutil file createnew "Folder_H\Subfolder_H2\aplikasi_2_H.bat" 5120

fsutil file createnew "Folder_H\Subfolder_H3\dokumen_3_H.pdf" 1024
fsutil file createnew "Folder_H\Subfolder_H3\data_3_H.docx" 2048
fsutil file createnew "Folder_H\Subfolder_H3\catatan_3_H.txt" 3072
fsutil file createnew "Folder_H\Subfolder_H3\laporan_3_H.csv" 4096
fsutil file createnew "Folder_H\Subfolder_H3\aplikasi_3_H.bat" 5120

fsutil file createnew "Folder_H\database_8.db" 3072
fsutil file createnew "Folder_H\cofig_8.ini" 2048

fsutil file createnew "Folder_I\Subfolder_I1\dokumen_1_I.pdf" 1024
fsutil file createnew "Folder_I\Subfolder_I1\data_1_I.docx" 2048
fsutil file createnew "Folder_I\Subfolder_I1\catatan_1_I.txt" 3072
fsutil file createnew "Folder_I\Subfolder_I1\laporan_1_I.csv" 4096
fsutil file createnew "Folder_I\Subfolder_I1\aplikasi_1_I.bat" 5120

fsutil file createnew "Folder_I\Subfolder_I2\dokumen_2_I.pdf" 1024
fsutil file createnew "Folder_I\Subfolder_I2\data_2_I.docx" 2048
fsutil file createnew "Folder_I\Subfolder_I2\catatan_2_I.txt" 3072
fsutil file createnew "Folder_I\Subfolder_I2\laporan_2_I.csv" 4096
fsutil file createnew "Folder_I\Subfolder_I2\aplikasi_2_I.bat" 5120

fsutil file createnew "Folder_I\Subfolder_I3\dokumen_3_I.pdf" 1024
fsutil file createnew "Folder_I\Subfolder_I3\data_3_I.docx" 2048
fsutil file createnew "Folder_I\Subfolder_I3\catatan_3_I.txt" 3072
fsutil file createnew "Folder_I\Subfolder_I3\laporan_3_I.csv" 4096
fsutil file createnew "Folder_I\Subfolder_I3\aplikasi_3_I.bat" 5120

fsutil file createnew "Folder_I\database_9.db" 3072
fsutil file createnew "Folder_I\cofig_9.ini" 2048

fsutil file createnew "Folder_J\Subfolder_J1\dokumen_1_J.pdf" 1024
fsutil file createnew "Folder_J\Subfolder_J1\data_1_J.docx" 2048
fsutil file createnew "Folder_J\Subfolder_J1\catatan_1_J.txt" 3072
fsutil file createnew "Folder_J\Subfolder_J1\laporan_1_J.csv" 4096
fsutil file createnew "Folder_J\Subfolder_J1\aplikasi_1_J.bat" 5120

fsutil file createnew "Folder_J\Subfolder_J2\dokumen_2_J.pdf" 1024
fsutil file createnew "Folder_J\Subfolder_J2\data_2_J.docx" 2048
fsutil file createnew "Folder_J\Subfolder_J2\catatan_2_J.txt" 3072
fsutil file createnew "Folder_J\Subfolder_J2\laporan_2_J.csv" 4096
fsutil file createnew "Folder_J\Subfolder_J2\aplikasi_2_J.bat" 5120

fsutil file createnew "Folder_J\Subfolder_J3\dokumen_3_J.pdf" 1024
fsutil file createnew "Folder_J\Subfolder_J3\data_3_J.docx" 2048
fsutil file createnew "Folder_J\Subfolder_J3\catatan_3_J.txt" 3072
fsutil file createnew "Folder_J\Subfolder_J3\laporan_3_J.csv" 4096
fsutil file createnew "Folder_J\Subfolder_J3\aplikasi_3_J.bat" 5120

fsutil file createnew "Folder_J\database_10.db" 3072
fsutil file createnew "Folder_J\cofig_10.ini" 2048

REM ----------------------------------------------------
REM --- Bagian 4: Selesai ---
REM ----------------------------------------------------
echo.
echo Setup Simulasi Selesai!
echo Cek folder 'SimulasiDrive_D' dan 'SimulasiDrive_C' di Desktop Anda.
pause