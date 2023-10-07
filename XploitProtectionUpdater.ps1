# Thanks to jdgregson for this script
$guid = New-Guid
$dest_dir = "$HOME\Downloads"
$file_url = "https://raw.githubusercontent.com/neohiro/ExploitProtection/M3T4P0D.3XPL01T/XploitProtection.xml"
$file_path = "$dest_dir\XploitProtection-$guid.xml"

try {
    "test" > "$dest_dir\test.$guid"
    Remove-Item "$dest_dir\test.$guid"
} catch {
    Write-Warning "Could not write to `"$dest_dir`". Are you running this as an administrator?"
    Write-Host "No changes were made."
    Exit
}

Write-Host "Downloading new settings XML..." -NoNewline
Invoke-WebRequest -Uri $file_url -OutFile $file_path
if (Test-Path $file_path) {
    Write-Host "DONE" -ForegroundColor "DarkGreen"
    Write-Host "Verifying new settings XML..." -NoNewline
    if ((Set-ProcessMitigation -PolicyFilePath $file_path -IsValid) -eq "Is Valid XML: True") {
        Write-Host "DONE" -ForegroundColor "DarkGreen"
        Write-Host "Applying new settings XML..." -NoNewline
        Set-ProcessMitigation -PolicyFilePath $file_path
        Write-Host "DONE" -ForegroundColor "DarkGreen"
        Remove-Item $file_path
        Write-Warning "Reboot to enable protection update."
    } else {
        Write-Host "FAIL" -ForegroundColor "DarkRed"
        Write-Warning "$file_path is not valid."
        Write-Host "No changes were made."
    }
} else {
    Write-Host "FAIL" -ForegroundColor "DarkRed"
    Write-Warning "The XML file was not found after download."
    Write-Host "No changes were made."
}
# XploitProtectionUpdater:
