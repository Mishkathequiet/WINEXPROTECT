## Windows Exploit Protection Settings

This is the ultimate configuration file against many forms of hacking such as memory space access, malware, credential theft, denial of service attacks and rootkit deployments for all standard Windows & specific programs. 

Update the settings with new entries! [XploitProtection.xml](https://github.com/neohiro/ExploitProtection/XploitProtection.xml) does not use 'milgrade security whitelisting' so any new installation works out of the box on Windows while still protecting all else, the settings are rather built from the ground up (blacklisting). These apps are currently protected and guaranteed to start (click categories to show list):

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
- OpenVPN
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

Check settings of separate programs if features don't work. 90% of features are tested & all run w/ zero configuration
> <sup> Windows Settings > Security & Privacy > Windows Security > App & browser control > Exploit protection settings > Program settings </sup>


# Import for Windows 10 & 11
Use [XPROT Manager](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/XProtGUI.ps1) to change Windows Exploit Protection settings (screenshot below). Update every so often (this will not remove entries & gets you the most recent xml online every time) - that's it. Always reboot to complete the import, also after importing with this manual command:

`PS Set-ProcessMitigation -PolicyFilePath "$HOME\Downloads\XploitProtection.xml"`

### Backup, Remove & Import
To install some specific software you'll need to temporarily remove protection which can be done as well with XPROT; reboot & install the software, update again or import any local XML via XProtGUI. After restarting the device (again), these stricter policies help against intrusions like botnets & cache exploits

## Merged Repositories
- https://github.com/jdgregson/Exploit-Protection-Settings as to support Microsoft Office
- Added https://github.com/Strana-Mechty/ExploitProtection-Templates supporting Adobe, Telegram & more
- Calibrated with https://github.com/microsoft/ExploitProtectionConfiguration but all is already stricter

## Security Upgrades
  - https://github.com/AndyFul/Hard_Configurator (further hardening of Windows)
  - [windows_hardening.cmd](https://gist.github.com/neohiro/da3dc76dcf77c67878f02fd71ac17358) (includes anti mimikatz exploit regedit)

## Windows Tools
  - https://github.com/Sycnex/Windows10Debloater (debloat Windows 10 & 11)
  - https://www.thewindowsclub.com/ultimate-windows-tweaker-5-for-windows-11

Enjoy this metapod project, bringing together solutions to defend yourself online

# [> START USING XPROT](https://github.com/neohiro/ExploitProtection/releases/tag/1.0)

Star this repository to receive updates & help others, you can also support this project via http://donate.frenzypenguin.media

![GUIscreenshot](https://github.com/neohiro/ExploitProtection/blob/M3T4P0D.3XPL01T/media/XProtGUIscreenshot.png)

#WindowsHome #WindowsPro #Windows10 #Windows11 #WindowsExploitProtectionSettings #Hardening #Cybersecurity #ExploitProtection #Defender #WindowsDefender #Gaming #Mimikatz #Defense #Botnet #Antibotnet #Privacy #SVC #Vulnerabilities #Cyberdefense #Protection #Gaming #Stackpivot #CFG #SEHOP #Heapcorruption #Safeboot #Redhat #Whitehat #Anonymous #Opensource #Interface
