@echo off
title ssh^ over^ socks5^ by^ trojan
cls
echo ssh^ over^ socks5^ by^ trojan
2>&1>nul taskkill /f /im trojan.exe
REM -> you can change the trojan binary file and config file path.
start /MIN /HIGH D:\Ksoftware\trojan\trojan.exe -c D:\Ksoftware\trojan\config.json
REM -> delay 1s for trojan to start completly!
>nul choice /t 1 /d y
bash -c ^"ssh -o ProxyCommand='nc -x 127.0.0.1:1080 %%h %%p' root^@127.0.0.1^"
