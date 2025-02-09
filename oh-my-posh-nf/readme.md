# structure on salt master

/srv/salt/
└── windows/
    └── oh-my-posh/
        ├── init.sls
        ├── install.ps1
        ├── install-font.ps1
        ├── configure-profile.ps1
        └── configure-terminal.ps1

https://www.hanselman.com/blog/my-ultimate-powershell-prompt-with-oh-my-posh-and-the-windows-terminal        

https://github.com/JanDeDobbeleer/oh-my-posh

https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/510fe9b57f35f4caf1381f5dda1eac67ffeb033f/themes/jandedobbeleer.omp.json
jandedobbeleer.omp.json

https://gist.githubusercontent.com/shanselman/1f69b28bfcc4f7716e49eb5bb34d7b2c/raw/8e9c9a8736ff4e9e5a863c20833d614549ccbc32/ohmyposhv3-v2.json
ohmyposhv3-v2.json


notepad++ $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
notepad++ $env:POSH_THEMES_PATH\jandedobbeleer.omp.json
 cd $env:POSH_THEMES_PATH\
pwd

Path
----
C:\Users\admin.urs\AppData\Local\Programs\oh-my-posh\themes

 LocalState  dir


    Directory: C:\Users\admin.urs\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState


         LastWriteTime     Length Name
         -------------     ------ ----
 11/28/2024 7:54:53 PM     5.37kb   settings.json
  2/1/2025 10:35:23 AM        869   state.json


 admin.urs   LocalState       