ARG BASE="mcr.microsoft.com/windows/nanoserver:ltsc2022"
FROM $BASE

ENV PATH="C:\Windows\system32;C:\Windows;"
COPY ./windows_exporter.exe /windows_exporter.exe
ENTRYPOINT ["windows_exporter.exe"]