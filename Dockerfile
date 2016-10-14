FROM microsoft/windowsservercore

LABEL "io.rancher.container.system"="rancher-agent"
COPY run.ps1 agent.exe host-api.exe c:/
ENTRYPOINT ["powershell", "c:/run.ps1"]
