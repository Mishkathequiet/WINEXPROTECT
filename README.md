# Windows Exploit Protection Settings

This is the ultimate configuration file against many forms of hacking such as memory space access, malware, credential theft, denial of service attacks and rootkit deployments for all standard Windows & specific programs. The following apps are currently protected and guaranteed to start (click categories to show list):

<details>
<summary>  Microsoft Services </summary>
  
- Literally all (!) basic Windows programs from boot. Beyond recommendations
(took a few bluescreens >.<)
- OneDrive
- File Explorer
- Smartscreen
- Windows Settings
- Task Manager
- Windows Store
- search index
- SSH
- svchost
- smss
- csrss
- conhost
- dashost
- OOBEbroker
- WMI
- wininit
- winlogon
- WerFault
- lsalso & lsass
- and many more (everything on Windows 10 & 11)
</details>
<details>
<summary> Web Browsers </summary>
  
- Google Chrome (allowing extensions)
- Mozilla Firefox (fully functional with many protection settings)
- Internet Explorer (misclicks happen)
- Opera
- Safari
- Thorium
- Edge
- DuckDuckGo
- Brave
</details>
<details>
<summary> Media Tools </summary>
  
- Audacity
- butt audio streaming
- Virtual DJ
- Photoshop
- Groove Music
- Winamp
- foobar2000
- iTunes
- Windows Media Player
- NDIRecord
- StreamDeck
- Yamaha Steinberg USB
- vMix64
- BlackMagic Video
- VLC Media Player
</details>
<details>
<summary> Communication Apps </summary>

- Skype
- Lync
- Pidgin
- Telegram
- MS Outlook
- Thunderbird
- Windows Live Mail
- Google Talk
- Slack
- Whatsapp
- Armcord (a Discord client)
- Discord
</details>
<details>
<summary> Gaming </summary>

- Steam
- Ubisoft
- EA - Electronic Arts
- GOG Galaxy (edit version number in .XML file accordingly)
- EasyAntiCheat
- The Sims 4
- Cyberpunk 2077
- Firestorm viewer for Second Life
- Radegast
</details>
<details>
<summary> Networking </summary>

- [dnscrypt-proxy](https://github.com/DNSCrypt/dnscrypt-proxy)
- Tor
- WARP 1.1.1.1
- OpenVPN
- WireGuard
- VPN Unlimited

</details>
<details>
<summary>  Common Software </summary>

- Acrobat Reader PDF
- cmd terminal
- Foxit PDF Reader
- Java
- MS Access
- MS Excel
- MS PowerPoint
- MS Word
- MS Wordpad
- MS Notepad
- Notepad++
- Obsidian
- OneNote
- PowerShell
- PowerShell ISE
- Sumatra PDF
- Visio
- WinZip
- 7Z
- ...
</details>
<details>
<summary> Other Executables </summary>

- Adobe (services)
- AMD (GPU driver)
- Citrix Workspace App
- Edge Webview2 (works for Citrix Workspace, DuckDuckGo, Edge...)
- Everything
- HP (drivers)
- Intel (drivers)
- KeePassXC & proxy
- Open SSL
- NVIDIA
- Qbittorrent
- Qt Web Engine
- Real Converter
- RealPlay
- Realtek Audio
- SyncThing
- Thunderbolt
- WinRAR
- ...
</details>

Check settings of separate programs if features don't work. 90% of features are tested & all run with zero configuration
> <sup> Windows Settings > Security & Privacy > Windows Security > App & browser control > Exploit protection settings > Program settings </sup>


[XploitProtection.xml](https://github.com/neohiro/ExploitProtection/XploitProtection.xml) doesn't use 'milgradesec' allowlisting and focuses on consumers (games) & small business where agility is everything, settings are built through blocklisting on top of basic system protection to ensure that any new installation works out of the box while still protecting all else. Update this list with new entries yourself and keep XploitProtection.xml growing.

## Import for Windows 10 & 11
Run [XPROT.ps1](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/XPROT.ps1) to change Windows Exploit Protection settings quickly. Update every so often (this will not remove entries & gets the most recent online xml every time) & reboot to activate, also after a manual import:

`Set-ProcessMitigation -PolicyFilePath "$HOME\Downloads\XploitProtection.xml"`

### Backup, Remove & Import
Some specific installs require temporarily removing protection, this can be done with XPROT: reboot & install the software, update again or import any local XML. After restarting the device (again), these policies block intrusions like botnets & cache exploits

## [XPROT](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/XPROT.ps1), Windows Exploit Protection Manager
![GUIscreenshot](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/media/XProtGUIscreenshot.png)
###
The standalone GUI script brings dramatic improvements to the slow per-program interface that Windows Security offers endusers today, even compared to running custom scripts - XPROT Manager excels in speed for bulk actions & repetitive implementations, thus running tighter security with no trouble: remove & import the same settings again during future installations. Mostly, stay up to date with newest software protection settings with only three clicks and a reboot. [Protect now!](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/XPROT.ps1)
###
![settingsimage](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/media/WindowsSettings.jpg)

## Security Upgrades
  - [windows_hardening.cmd](https://gist.github.com/neohiro/da3dc76dcf77c67878f02fd71ac17358) (includes **anti mimikatz exploit** regedit & more!)
  - https://github.com/AndyFul/Hard_Configurator (further hardening of Windows)

### Windows Tools
  - https://github.com/Sycnex/Windows10Debloater (debloat Windows 10 & 11)
  - https://www.thewindowsclub.com/ultimate-windows-tweaker-5-for-windows-11

### Merged Repositories
- https://github.com/jdgregson/Exploit-Protection-Settings as to support Microsoft Office
- Added https://github.com/Strana-Mechty/ExploitProtection-Templates supporting Adobe, Telegram & more
- Calibrated with https://github.com/microsoft/ExploitProtectionConfiguration but all is set stricter
##
Star this repository to help others & watch to receive updates, you can support this project via http://donate.frenzypenguin.media
##
#WindowsHome #WindowsPro #Windows10 #Windows11 #Microsoft #WindowsExploitProtectionSettings #Hardening #Cybersecurity #ExploitProtection #Defender #WindowsDefender #Gaming #Mimikatz #Defense #Botnet #Antibotnet #Privacy #SVC #Vulnerabilities #Cyberdefense #Protection #Gaming #Stackpivot #CFG #SEHOP #ASLR #Heapcorruption #Safeboot #Redhat #Whitehat #Anonymous #Opensource #Interface #FrenzyPenguinMedia #Tool #ProtectionSettings #Manager #Security #Software #GUI #Productivity #CallerCheck #HandleUsage #Fonts #Images #dll #services #taskhost #svchost #Powershell
