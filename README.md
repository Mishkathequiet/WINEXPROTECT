# Windows Exploit Protection Settings

This is the ultimate configuration file against many forms of hacking such as memory space access, malware, credential theft, denial of service attacks and rootkit deployments; both for almost all standard Windows services & specific programs. The following apps are almost fully protected (click categories to see detailed lists):

<details>
<summary>  Microsoft Services </summary>
  
- Literally all (!) basic Windows programs running from start. Beyond recommendations
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
- and many more (everything running on Windows OS)
</details>
<details>
<summary> Web Browsers </summary>
  
- Google Chrome (allowing extensions to run)
- Mozilla Firefox (fully functional with many protection settings)
- Internet Explorer (misclicks happen)
- Opera
- Safari
- Thorium
- Edge
- DuckDuckGo
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
- WireGuard
- VPN Unlimited

</details>
<details>
<summary>  Common Software </summary>

- Acrobat Reader PDF
- cmd
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
- Powershell
- Powershell ISE
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
- Edge Webview2 (works for Citrix Workspace,...)
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

Check settings of separate programs if features don't work. 90% of features are tested & all run w/ zero configuration
> <sup> Windows Settings > Security & Privacy > Windows Security > App & browser control > Exploit protection settings > Program settings </sup>



## Import in Windows
Use the [powershell updater](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/XploitProtectionUpdater.ps1) every so often (this will not remove other entries) - that's it! Reboot to complete the import

# Backup & Remove

Installing certain software requires less strict protection; temporarily disable protection with [this script](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/XploitProtectionRemoveAll.ps1), reboot & install software, then import  the automatic backup by opening PowerShell with administrator rights & run

`Set-ProcessMitigation -PolicyFilePath "$HOME\Downloads\XploitProtection.xml"` 

<sup>Add "MMddyyyy" date format to filename, see Downloads folder & copy paste path</sup>

After restarting the device, these stricter policies prevent many intrusions like botnets & cache exploits

## Merged Repositories

- https://github.com/jdgregson/Exploit-Protection-Settings as to support Microsoft Office
- Added https://github.com/Strana-Mechty/ExploitProtection-Templates supporting Adobe, Telegram & more
- Calibrated with https://github.com/microsoft/ExploitProtectionConfiguration but all is already stricter

## Protection Links (!)

  - https://www.thewindowsclub.com/ultimate-windows-tweaker-5-for-windows-11
  - https://github.com/AndyFul/Hard_Configurator (further hardening of Windows)

Enjoy this metapod project, bringing together solutions to defend yourself online

# [> DOWNLOAD & RUN](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/XploitProtectionUpdater.ps1)

Star this repository to receive updates & help others, you can also support this project via http://donate.frenzypenguin.media
