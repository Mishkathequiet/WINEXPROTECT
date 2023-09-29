# Windows 11 Exploit Protection Settings

After tweaking for a while, this is a first version against many forms of hacking Microsoft Windows like memory space access, GPU malware, credential theft, denial of service and rootkit deployments; both standard Windows programs & a few specific ones. 
These are relatively strict security settings, still allowing for unique programs such as:

## Music software

- Audacity
- butt streaming
- Virtual DJ

## Games

- Steam & webhelper
- EasyAntiCheat
- Firestorm-Releasex64 viewer for Second Life (hardened: without internal browser or voice).

## Video software

- vMix64
- NDIRecord
- StreamDeck

## Common software

- All (!) basic Microsoft Windows 11 services and programs all the way from start up!
(took a few bluescreens for the team >.<).
- Intel chipset software
- AMD software
- NVIDIA driver
- Obsidian
- Google Chrome (may it be in a more secure form, still allowing extensions to run)
- Mozilla Firefox (very controlled and functional with exploit protection settings on)
- MS Edge & Internet Explorer (in case you click wrong)
- Excel
- OneDrive
- Outlook
- Word & Wordpad
- PowerPoint
- Visio
- Java
- MS Access
- dnscrypt-proxy
- Armcord (a Discord client)
- Acrobat framework
- VLC Media Player
- Windows Media Player
- 7z (unzip)
- VPN Unlimited
- Whatsapp

Please check specific exploit protection settings for programs where not all features might work well, the only thing guaranteed is your system will boot. 
However you can rest assured 90% of all features are fully tested and their features work without the need to tweak less strict.

## Import into Windows 11
(maybe also still 10) by going to the folder of the .xml file, open PowerShell with administrator rights and run following command;

`Set-ProcessMitigation -PolicyFilePath .\XploitProtection.xml`
