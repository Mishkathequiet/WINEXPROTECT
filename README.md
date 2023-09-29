## Windows 11 Exploit Protection Settings

After tweaking a while, this is an ultimate version against many forms of hacking such as memory space access, GPU malware, credential theft, denial of service and rootkit deployments; both to protect almost all standard Windows & some specific programs. These are very strict security settings protecting:

### Common software

- Literally all (!) basic Microsoft programs running from start. Overkill, surpassing (C)ISO & Microsoft recommendations
(took a few bluescreens >.<)
- OneDrive
- OneNote
- Open SSL
- Intel chipset software
- AMD software
- NVIDIA driver
- Realtek Audio 64
- Smartscreen
- MS Access
- MS Excel
- MS PowerPoint
- MS Word & Wordpad
- Visio
- Java

### Internet Browsers

- Google Chrome (allowing extensions to run)
- Mozilla Firefox (fully functional with many protection settings)
- Safari
- Thorium
- Edge
- Internet Explorer (in case you misclick)

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
- Google Talk
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
- Adobe frameworks
- KeePass
- SyncThing
- Everything
- Real Converter
- RealPlay
- dnscrypt-proxy
- Notepad++
- Obsidian
- Acrobat Reader PDF
- Sumatra PDF
- Foxit PDF Reader
- VPN Unlimited
- WinZip
- WinRAR
- 7z (unzip)


Please check specific exploit protection settings for programs when not all features might work well. 90% of all features are fully tested and their features work without the need to tweak less strict.



## Import into Windows 11
Import (also for Windows 10) by going to the folder of the .xml file, open PowerShell with administrator rights & run

`Set-ProcessMitigation -PolicyFilePath .\XploitProtection.xml`



## Merges

- with https://github.com/jdgregson/Exploit-Protection-Settings to support Office
- added https://github.com/Strana-Mechty/ExploitProtection-Templates supporting Photoshop, Telegram & more!

## Dangerous protection links

  - https://www.thewindowsclub.com/ultimate-windows-tweaker-5-for-windows-11 (turn off Windows features)
  - https://github.com/AndyFul/Hard_Configurator (hardening of Windows)
  - https://github.com/simeononsecurity/Windows-Optimize-Harden-Debloat

### Download .XML -> https://github.com/neohiro/exploitprotection/blob/main/XploitProtection.xml
