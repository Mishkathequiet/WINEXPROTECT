## Windows 11 Exploit Protection Settings

After tweaking for a while, this is a first version against many forms of hacking through Microsoft Windows such as memory space access, GPU malware, credential theft, denial of service and rootkit deployments; both to protect almost all standard Windows & a few specific programs. These are very strict security settings protecting:

### Common software

- Literally all (!) basic Microsoft Windows 11 programs all the way from start up!
(took a few bluescreens for the team >.<).
- OneDrive
- Google Chrome (may it be in a more secure form, still allowing extensions to run)
- Mozilla Firefox (very controlled and functional with exploit protection settings on)
- MS Edge & Internet Explorer (in case you click wrong)
- MS Excel
- MS Outlook
- MS Word & Wordpad
- MS PowerPoint
- MS Access
- Visio
- Java
- Acrobat framework
- Intel chipset software
- AMD software
- NVIDIA driver
- VLC Media Player
- Windows Media Player
- 7z (unzip)

### Music software

- Audacity
- butt streaming
- Virtual DJ

### Games

- Steam & webhelper
- EasyAntiCheat
- Firestorm-Releasex64 viewer for Second Life (hardened: no browser or SL voice).

### Video software

- vMix64
- NDIRecord
- StreamDeck

### Specific software

- dnscrypt-proxy
- Armcord (a Discord client)
- VPN Unlimited
- Whatsapp
- Obsidian
- Notepad++

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
