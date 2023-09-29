## Windows 11 Exploit Protection Settings

After tweaking for a while, this is a first version against many forms of hacking through Microsoft Windows such as memory space access, GPU malware, credential theft, denial of service and rootkit deployments; both to protect almost all standard Windows & some specific programs. These are very strict security settings protecting:

### Common software

- Literally all (!) basic Microsoft Windows programs all the way from start! Surpasses (C)ISO & Microsoft standards
(took a few bluescreens for the team >.<)
- OneDrive
- Smartscreen
- Google Chrome (still allowing extensions to run)
- Mozilla Firefox (fully functional with many protection settings)
- MS Edge & Internet Explorer (in case you misclick)
- MS Access
- MS Excel
- MS Outlook
- MS PowerPoint
- MS Word & Wordpad
- Visio
- Java
- Acrobat framework
- Intel chipset software
- AMD software
- NVIDIA driver
- Realtek Audio 64
- 7z (unzip)
- Windows Media Player

### Music software

- Audacity
- butt streaming
- Virtual DJ

### Games

- Steam
- EasyAntiCheat
- Firestorm-Releasex64 viewer for Second Life (hardened: no browser or SL voice)
- Corrade (unsupported textbased viewer for Second Life)

### Video software

- NDIRecord
- StreamDeck
- vMix64

### Specific software

- Armcord (a Discord client)
- dnscrypt-proxy
- Notepad++
- Obsidian
- VLC Media Player
- VPN Unlimited
- Whatsapp

Program list, import & other links

Please check specific exploit protection settings for programs where not all features might work well, the only thing guaranteed is your system will boot. 
However you can rest assured 90% of all features are fully tested and their features work without the need to tweak less strict.



## Import into Windows 11
Import (also in Windows 10) by going to the folder of the .xml file, open PowerShell with administrator rights and run following command;

`Set-ProcessMitigation -PolicyFilePath .\XploitProtection.xml`



## Merges

- Merged with less elaborate list from https://github.com/jdgregson/Exploit-Protection-Settings to support MS Office.
- More to follow

## Links

  - https://github.com/AndyFul/Hard_Configurator (hardening of Windows)
  - https://github.com/simeononsecurity/Windows-Optimize-Harden-Debloat
  - https://www.thewindowsclub.com/ultimate-windows-tweaker-5-for-windows-11 (turn off Windows features)
