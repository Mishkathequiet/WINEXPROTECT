## Windows 11 Exploit Protection Settings

After tweaking a while this became the ultimate file against almost all forms of hacking such as memory space access, GPU malware, credential theft, denial of service and rootkit deployments; both to protect almost all standard Windows & some specific programs. Following programs are protected:


<details>
<summary>  Common Software </summary>
  
- Literally all (!) basic Windows programs running from start. Beyond recommendations
(took a few bluescreens >.<)
- Smartscreen
- OneDrive
- OneNote
- Open SSL
- Intel
- AMD
- NVIDIA
- Realtek Audio
- MS Access
- MS Excel
- MS PowerPoint
- MS Word & Wordpad
- Visio
</details>
<details>
<summary> Web Browsers </summary>
  
- Google Chrome (allowing extensions to run)
- Mozilla Firefox (fully functional with many protection settings)
- Internet Explorer (in case you misclick)
- Safari
- Thorium
- Edge
</details>
<details>
<summary> Media Tools </summary>
  
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
- BlackMagic Video
- VLC Media Player
</details>
<details>
<summary> Communication Apps </summary>

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
</details>
<details>

<summary> Games </summary>

- Steam
- GOG Galaxy (edit version number in .XML file accordingly)
- EasyAntiCheat
- Firestorm-Releasex64 viewer for Second Life (hardened: no browser or SL voice)
- Corrade (unsupported textbased viewer for Second Life)
</details>
<details>

<summary> Other Programs </summary>

- Photoshop
- Adobe
- KeePass
- SyncThing
- Everything
- Real Converter
- RealPlay
- Notepad++
- Obsidian
- Acrobat Reader PDF
- Sumatra PDF
- Foxit PDF Reader
- Java
- dnscrypt-proxy
- VPN Unlimited
- 7Z
- WinZip
- WinRAR
</details>

Check settings for programs if not all features work. 90% of features are tested & work without configuration
> <sup> Windows Settings > Security & Privacy > Windows Security > App & browser control > Exploit protection settings > Program settings </sup>



## Import into Windows 11
Import (also for Windows 10) by going to the folder of the .xml file, open PowerShell with administrator rights & run

`Set-ProcessMitigation -PolicyFilePath .\XploitProtection.xml`



## Merges

- https://github.com/jdgregson/Exploit-Protection-Settings to support Microsoft Office
- Added https://github.com/Strana-Mechty/ExploitProtection-Templates supporting Photoshop, Telegram & more

## Protection Links (dangerous)

  - https://www.thewindowsclub.com/ultimate-windows-tweaker-5-for-windows-11
  - https://github.com/AndyFul/Hard_Configurator (hardening of Windows)
  - https://github.com/simeononsecurity/Windows-Optimize-Harden-Debloat


Enjoy this metapod project, trying to bring together often used programs to protect everyone & everything
### Download .XML -> https://github.com/neohiro/exploitprotection/blob/main/XploitProtection.xml
