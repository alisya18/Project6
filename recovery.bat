@echo off
echo Memulai proses Data Recovery...
robocopy "%USERPROFILE%\Desktop\SimulasiDrive_D" "%USERPROFILE%\Desktop\SimulasiDrive_C" /E /Z /V /LOG:recovery_log.txt /TEE
echo Proses Recovery Selesai. Cek recovery_log.txt untuk detail.
pause