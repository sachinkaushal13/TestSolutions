
STEPS to install minikube on windows 10 Home

We have to use VirtualBox for virtualization since Hyper V is not installed on Windows 10 Home edition.

STEP-1:Install Docker Toolbox for Windows
Install Docker Toolbox for windows from https://docs.docker.com/toolbox/toolbox_install_windows/. It will also install VirtualBox. Once you finish the installation click on the icon on the Desktop called ‘Docker Quickstart Terminal’. It will perform some steps to finish the installation.

STEP-2 Install CHOCO using below:
Open command prompt with admin privilege's and run below command

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

STEP-3 Install minikube using choco
choco install minikube

STEP-4 Once minikube is installed, to start it, type in ‘minikube.exe start –vm-driver=virtualbox”. This will download and install a single node Kubernetes cluster on your laptop.

..............................................................

Use kubectl apply command to deploy your object using .yaml files

Usage: kubectl apply -f "file name"

And can use Kubectl get command to view your deployments, pod, services etc

Usage: Kubectl get deployments

you can  view the output using curl command as below :

curl http://minikubeip:port
