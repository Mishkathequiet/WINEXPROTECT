# Windows Exploit Protection Settings

This is the ultimate configuration against many forms of hacking such as memory space access, malware, credential theft, denial of service attacks and rootkit deployments for all standard Windows & specific programs. The following apps are currently protected and guaranteed to start (click categories to show list):

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
- Librewolf
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
- Traktor
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
- Comodo Internet Security

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
- SwitchDefaultDeny(x64)
- SyncThing
- Thunderbolt
- WinRAR
- ...
</details>

Check separate program settings when specific features don't work. 90% is tested & all run w/ zero configuration
> <sup> Windows Settings > Security & Privacy > Windows Security > App & browser control > Exploit protection settings > Program settings </sup>


[XploitProtection.xml](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/XploitProtection.xml) + the extra security settings below are focused on Windows Home & Pro consumers, gamers & small businesses where agility is everything. Help update XploitProtection.xml with new entries and keep this list growing.

## Import for Windows
Run [XPROT.ps1](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/media/XPROT.ps1) to change WEPS quickly. Update every so often (this will not remove entries & gets the most recent online xml every time) & reboot to activate, also after manually importing with this command:

`Set-ProcessMitigation -PolicyFilePath "$HOME\Downloads\XploitProtection.xml"`

### Backup, Remove & Import
Some rare, specific installs require temporarily removing protection, this can be done with XPROT: reboot & install the software, update again or import any local XML. After restarting (again), these policies block intrusions like botnets & cache exploits

## [XPROT](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/media/XPROT.ps1), Windows Exploit Protection Manager
![GUIscreenshot](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/media/XProtGUIscreenshot.png)
###
This standalone GUI script brings dramatic improvements to the slow per-program interface that Windows offers endusers today - XPROT Manager excels in speed for bulk actions & repetitive implementations, thus running tighter security with no trouble: remove & import same settings again during new installations. Stay up to date with new software protection settings with only three clicks and a reboot. [Protect now!](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/media/XPROT.ps1)
###
![settingsimage](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/media/WindowsSettings.jpg)

## Security Upgrades
  - Use DNS (f.e. 9.9.9.9, 1.1.1.1,...) with activated encryption via Windows network settings or a third party solution
  - [windows_hardening.cmd](https://gist.github.com/neohiro/da3dc76dcf77c67878f02fd71ac17358) (includes **anti mimikatz exploit** regedit & more security!)
  - https://github.com/AndyFul/ConfigureDefender (further hardening of Windows)

### Windows Tools
  - https://github.com/Sycnex/Windows10Debloater (debloat Windows 10 & 11)
  - https://www.thewindowsclub.com/ultimate-windows-tweaker-5-for-windows-11

### Merged Repositories
- https://github.com/jdgregson/Exploit-Protection-Settings as to support Microsoft Office
- Added https://github.com/Strana-Mechty/ExploitProtection-Templates supporting Adobe, Telegram & more
- Calibrated with https://github.com/microsoft/ExploitProtectionConfiguration but all is set stricter
##
Star this repository to help others.
##
#WindowsHome #WindowsPro #Windows10 #Windows11 #Microsoft #WindowsExploitProtectionSettings #Hardening #Cybersecurity #ExploitProtection #Defender #WindowsDefender #Gaming #Mimikatz #Defense #Botnet #Antibotnet #Privacy #SVC #Vulnerabilities #Cyberdefense #Protection #Gaming #Stackpivot #CFG #SEHOP #ASLR #Heapcorruption #Safeboot #Redhat #Whitehat #Anonymous #Opensource #Interface #FrenzyPenguinMedia #Tool #ProtectionSettings #Manager #Security #Software #GUI #Productivity #CallerCheck #HandleUsage #Fonts #Images #dll #services #taskhost #svchost #PowerShell #TLS

© FrenzyPenguin Media
