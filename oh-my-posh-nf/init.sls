oh-my-posh:
  pkg.installed:
    - name: oh-my-posh
    - require:
      - cmd: install-oh-my-posh

install-oh-my-posh:
  cmd.script:
    - source: salt://windows/oh-my-posh/install.ps1
    - shell: powershell
    - require:
      - pkg: oh-my-posh

cascadia-cove-nerd-font:
  pkg.installed:
    - name: cascadia-cove-nerd-font
    - require:
      - cmd: install-cascadia-cove-nerd-font

install-cascadia-cove-nerd-font:
  cmd.script:
    - source: salt://windows/oh-my-posh/install-font.ps1
    - shell: powershell
    - require:
      - pkg: cascadia-cove-nerd-font

configure-powershell-profile:
  cmd.script:
    - source: salt://windows/oh-my-posh/configure-profile.ps1
    - shell: powershell
    - require:
      - cmd: install-oh-my-posh
      - cmd: install-cascadia-cove-nerd-font

configure-windows-terminal:
  cmd.script:
    - source: salt://windows/oh-my-posh/configure-terminal.ps1
    - shell: powershell
    - require:
      - cmd: configure-powershell-profile