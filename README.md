## Windows 11 Exploit Protection Settings

After tweaking for a while, this is a first ultimate version against many forms of hacking such as memory space access, GPU malware, credential theft, denial of service and rootkit deployments; both to protect almost all standard Windows & some specific programs. These are very strict security settings protecting:

### Common software

- Literally all (!) basic Microsoft programs all the way from start. Overkill surpassing (C)ISO & Microsoft recommendations
(took a few bluescreens >.<)
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
- Discord
- KeePass
- SyncThing
- Everything
- dnscrypt-proxy
- Notepad++
- Obsidian
- VLC Media Player
- foobar2000
- VPN Unlimited
- Telegram
- Whatsapp


Please check specific exploit protection settings for programs where not all features might work well, the only thing guaranteed is your system will boot. 
However you can rest assured 90% of all features are fully tested and their features work without the need to tweak less strict.



## Import into Windows 11
Import (also in Windows 10) by going to the folder of the .xml file, open PowerShell with administrator rights & run

`Set-ProcessMitigation -PolicyFilePath .\XploitProtection.xml`



## Merges

- with https://github.com/jdgregson/Exploit-Protection-Settings to support Office
- with https://github.com/Strana-Mechty/ExploitProtection-Templates supporting KeePass, Telegram & foobar2000
- more to follow

## Dangerous links

  - https://www.thewindowsclub.com/ultimate-windows-tweaker-5-for-windows-11 (turn off Windows features)
  - https://github.com/AndyFul/Hard_Configurator (hardening of Windows)
  - https://github.com/simeononsecurity/Windows-Optimize-Harden-Debloat

### Download .XML -> https://github.com/neohiro/exploitprotection/releases
