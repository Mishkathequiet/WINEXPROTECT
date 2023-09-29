## Windows 11 Exploit Protection Settings

After tweaking a while, this is an ultimate version against many forms of hacking such as memory space access, GPU malware, credential theft, denial of service and rootkit deployments; both to protect almost all standard Windows & some specific programs. These are very strict security settings protecting:

### Common software

- Literally all (!) basic Microsoft programs all the way from start. Overkill surpassing (C)ISO & Microsoft recommendations
(took a few bluescreens >.<)
- OneDrive
- OneNote
- Open SSL
- Smartscreen
- Google Chrome (still allowing extensions to run)
- Google Talk
- Mozilla Firefox (fully functional with many protection settings)
- Safari
- Thorium
- MS Edge & Internet Explorer (in case you misclick)
- MS Access
- MS Excel
- MS PowerPoint
- MS Word & Wordpad
- Visio
- Java
- Intel chipset software
- AMD software
- NVIDIA driver
- Realtek Audio 64
- WinZip
- WinRAR
- 7z (unzip)

### Media Apps

- Audacity
- butt audio streaming
- Virtual DJ
- Groove Music
- Winamp
- foobar2000
- iTunes
- Windows Media Player
- NDIRecord
- StreamDeck
- vMix64
- VLC Media Player

### Communication apps

- Skype
- Pidgin
- Telegram
- MS Outlook
- Thunderbird
- Windows Live Mail
- Whatsapp
- Armcord (a Discord client)
- Discord

### Games

- Steam
- GOG Galaxy (edit version number 2.0 in .XML file accordingly)
- EasyAntiCheat
- Firestorm-Releasex64 viewer for Second Life (hardened: no browser or SL voice)
- Corrade (unsupported textbased viewer for Second Life)

### Other programs

- Photoshop
- Adobe framework
- KeePass
- SyncThing
- Everything
- Real Converter
- RealPlay
- dnscrypt-proxy
- Notepad++
- Obsidian
- Acrobat PDF
- Sumatra PDF
- Foxit PDF Reader
- VPN Unlimited

Please check specific exploit protection settings for programs where not all features might work well, the only thing guaranteed is your system will boot. 
However you can rest assured 90% of all features are fully tested and their features work without the need to tweak less strict.



## Import into Windows 11
Import (also in Windows 10) by going to the folder of the .xml file, open PowerShell with administrator rights & run

`Set-ProcessMitigation -PolicyFilePath .\XploitProtection.xml`



## Merges

- with https://github.com/jdgregson/Exploit-Protection-Settings to support Office
- added https://github.com/Strana-Mechty/ExploitProtection-Templates supporting Photoshop, Telegram & foobar2000

## Dangerous protection links

  - https://www.thewindowsclub.com/ultimate-windows-tweaker-5-for-windows-11 (turn off Windows features)
  - https://github.com/AndyFul/Hard_Configurator (hardening of Windows)
  - https://github.com/simeononsecurity/Windows-Optimize-Harden-Debloat

### Download .XML -> https://github.com/neohiro/exploitprotection/blob/main/XploitProtection.xml
