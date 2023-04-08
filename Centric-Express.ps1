Set-ExecutionPolicy Bypass -Scope Process -Force
$IsChocoInstalled = Get-Command -Name choco.exe -ErrorAction SilentlyContinue

If (!$IsChocoInstalled){
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

choco install prometheus-windows-exporter.install -y

#choco uninstall git.install -y
#choco uninstall prometheus-windows-exporter.install -y