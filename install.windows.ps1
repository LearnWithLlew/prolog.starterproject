# To run this script directly, run this in an elevated admin PowerShell prompt:
#     Invoke-WebRequest -UseBasicParsing https://raw.githubusercontent.com/LearnWithLlew/prolog.starterproject/main/install.windows.ps1 | Invoke-Expression

# This script is intended to setup a dev machine from scratch. Very useful for setting up a EC2 instance for mobbing.
#


iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex

choco install SWI-Prolog
cinst intellijidea
# install intellij plugin

# Clone repo
& "C:\Program Files\Git\cmd\git.exe" clone https://github.com/LearnWithLlew/prolog.starterproject.git C:\Code\prolog.starterproject
cd C:\Code\prolog.starterproject

# run
run_tests.bat

# Done
cls
echo "Done!"
