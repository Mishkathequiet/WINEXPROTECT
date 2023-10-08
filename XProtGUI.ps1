Requires -RunAsAdministrator
#Update, backup, remove all, import or reboot.

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[void][Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')

clear

Write-Host ""
Write-Host " XProtGUI 1.0" 
Write-Host ""
Write-Host " Keep this open & use grey popup window to continue."
Write-Host ""

$imglink = "https://raw.githubusercontent.com/neohiro/ExploitProtection/M3T4P0D.3XPL01T/media/Exploitprotectionlogo3.png"
Invoke-WebRequest $imglink -OutFile .\XProtlogo.png;

# Warn for untested version

#[System.Windows.Forms.MessageBox]::Show("XProt is not yet fully tested. Apologies for any inconvenience at the moment, fellow nerd. Feedback & contributions are welcome!" , "Bèta testing")

# Drawing Main Menu Form

do { 

    $Form_MainMenu = New-Object System.Windows.Forms.Form -ErrorAction SilentlyContinue
    
    $Form_MainMenu.Text = "Windows Exploit Protection Settings Manager"
    $Form_MainMenu.Size = New-Object System.Drawing.Size (350,630)
    $Form_MainMenu.FormBorderStyle = "FixedDialog"
    $Form_MainMenu.TopMost = $true
    $Form_MainMenu.MaximizeBox = $false
    $Form_MainMenu.MinimizeBox = $true
    $Form_MainMenu.ControlBox = $true
    $Form_MainMenu.StartPosition = "CenterScreen"
    $Form_MainMenu.Font = "Segoe UI"

# ADD LOGO

    $img = [System.Drawing.Image]::Fromfile(".\XProtlogo.png")
    $pictureBox = New-Object Windows.Forms.PictureBox -ErrorAction SilentlyContinue
    $pictureBox.Location = New-Object System.Drawing.Size (59,10)
    $pictureBox.Size = New-Object System.Drawing.Size(250,140)
    $pictureBox.Image = $img
    $Form_MainMenu.Controls.Add($pictureBox)

# LABEL WITH INFO TEXT on Main Menu Form

$label_MainMenu = New-Object System.Windows.Forms.Label

    $label_MainMenu.Location = New-Object System.Drawing.Size (46,160)
    $label_MainMenu.Size = New-Object System.Drawing.Size (250,25)
    $label_MainMenu.TextAlign = "MiddleCenter"
    $label_MainMenu.Text = "Welcome to XPROT"
    $Form_MainMenu.Controls.Add($label_MainMenu)

# BOTTOM LABEL WITH INFO TEXT on Form

$label_MainMenu2 = New-Object System.Windows.Forms.Label

    $label_MainMenu2.Location = New-Object System.Drawing.Size (50,510)
    $label_MainMenu2.Size = New-Object System.Drawing.Size (250,75)
    $label_MainMenu2.TextAlign = "MiddleCenter"
    $label_MainMenu2.Text = "XploitProtection provides an online database of protection settings  for  many popular Windows programs. Update again soon!         FrenzyPenguin Media 2023"
    $Form_MainMenu.Controls.Add($label_MainMenu2)

# BUTTONS GROUP

    $MyGroupBox1 = New-Object System.Windows.Forms.GroupBox
    $MyGroupBox1.Location = '23,190'
    $MyGroupBox1.size = '300,255'
    
    $RadioButton1 = New-Object System.Windows.Forms.RadioButton
    $RadioButton1.Location = '20,10'
    $RadioButton1.size = '240,40'
    $RadioButton1.Checked = $false
    $RadioButton1.Text = "UPDATE Exploit protection settings (Online)"
 
    $RadioButton2 = New-Object System.Windows.Forms.RadioButton
    $RadioButton2.Location = '20,50'
    $RadioButton2.size = '240,40'
    $RadioButton2.Checked = $false
    $RadioButton2.Text = "Make BACKUP of active protection settings"

    $RadioButton3 = New-Object System.Windows.Forms.RadioButton
    $RadioButton3.Location = '20,90'
    $RadioButton3.size = '240,40'
    $RadioButton3.Checked = $false
    $RadioButton3.Text = "REMOVE ALL Exploit protection settings"

    $RadioButton4 = New-Object System.Windows.Forms.RadioButton
    $RadioButton4.Location = '20,130'
    $RadioButton4.size = '240,40'
    $RadioButton4.Checked = $false
    $RadioButton4.Text = "IMPORT settings from local .XML file"

    $RadioButton5 = New-Object System.Windows.Forms.RadioButton
    $RadioButton5.Location = '20,170'
    $RadioButton5.size = '240,40'
    $RadioButton5.Checked = $false
    $RadioButton5.Text = "REBOOT now"

    $RadioButton6 = New-Object System.Windows.Forms.RadioButton
    $RadioButton6.Location = '20,210'
    $RadioButton6.size = '240,40'
    $RadioButton6.Checked = $false
    $RadioButton6.Text = "Software list and SUPPORT"

# Add an OK button

    $OKButton = new-object System.Windows.Forms.Button
    $OKButton.Location = '43,465'
    $OKButton.Size = '100,40' 
    $OKButton.Text = 'OK'
    $OKButton.DialogResult=[System.Windows.Forms.DialogResult]::OK
 
#Add a cancel button

    $CancelButton = new-object System.Windows.Forms.Button
    $CancelButton.Location = '205,465'
    $CancelButton.Size = '100,40'
    $CancelButton.Text = "Exit"
    $CancelButton.DialogResult=[System.Windows.Forms.DialogResult]::Cancel

# Add all the GroupBox controls on one line

    $MyGroupBox1.Controls.AddRange(@($Radiobutton1,$RadioButton2,$RadioButton3,$RadioButton4,$RadioButton5,$RadioButton6))

# Add all the Form controls on one line 

    $Form_MainMenu.Controls.AddRange(@($MyGroupBox1,$OKButton,$CancelButton))

# Assign the Accept and Cancel options in the form to the corresponding buttons

    $Form_MainMenu.AcceptButton = $OKButton
    $Form_MainMenu.CancelButton = $CancelButton    

# Get the results from the button click

    $dialogResult = $Form_MainMenu.ShowDialog()

# If the OK/Cancel button is selected, also verify button clicked and perform actions accordingly
    
    if ($dialogResult -eq "OK"){
        
# Check current state of each radio button and act accordingly
        
        if ($RadioButton1.Checked){

          
# updating from online .XML

$guid = New-Guid
$dest_dir = "$HOME\Downloads"
$file_url = "https://raw.githubusercontent.com/neohiro/ExploitProtection/M3T4P0D.3XPL01T/XploitProtection.xml"
$file_path = "$dest_dir\XploitProtection-$guid.xml"

Write-Host "Downloading new settings XML..." -NoNewline
Invoke-WebRequest -Uri $file_url -OutFile $file_path
if (Test-Path $file_path) {
    if ((Set-ProcessMitigation -PolicyFilePath $file_path -IsValid) -eq "Is Valid XML: True") {
        Set-ProcessMitigation -PolicyFilePath $file_path
        Remove-Item $file_path
        [System.Windows.Forms.MessageBox]::Show("Reboot to finalize protection","Update completed");
    } else {
        [System.Windows.Forms.MessageBox]::Show("$file_path is not valid","Error");
    }
} else {
    [System.Windows.Forms.MessageBox]::Show("Could not find downloaded XML","Error");
}
 	}

        elseif ($RadioButton2.Checked){

# POPUP to request filename & location

$title = 'BACKUP EXPLOIT PROTECTION SETTINGS'
$msg   = 'Choose filename for backup:'
$name = [Microsoft.VisualBasic.Interaction]::InputBox($msg, $title)        

$dialog = New-Object System.Windows.Forms.FolderBrowserDialog
if ($dialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
    $directoryName = $dialog.SelectedPath
    Write-Host "Directory selected is $directoryName"
}

Get-ProcessMitigation -RegistryConfigFilePath "$directoryName\$name.xml"
[System.Windows.Forms.MessageBox]::Show("Backup saved at $directoryName","Success")

}                                      

        elseif ($RadioButton3.Checked){
           
    $date = Get-Date -Format "MMddyyyy"

# Backup current settings in Downloads
Get-ProcessMitigation -RegistryConfigFilePath "$HOME\Downloads\XploitProtection$date.xml"

# Delete ExploitGuard ProcessMitigations for a given key in the registry. If no other settings exist under the specified key,
# the key is deleted as well
function Remove-ProcessMitigations([Object] $Key, [string] $Name) {
    Try {
        if ($Key.GetValue("MitigationOptions")) {
            Write-Host "Removing MitigationOptions for:      " $Name
            Remove-ItemProperty -Path $Key.PSPath -Name "MitigationOptions" -ErrorAction Stop;
        }
        if ($Key.GetValue("MitigationAuditOptions")) {
            Write-Host "Removing MitigationAuditOptions for: " $Name
            Remove-ItemProperty -Path $Key.PSPath -Name "MitigationAuditOptions" -ErrorAction Stop;
        }
        if ($Key.GetValue("EAFModules")) {
            Write-Host "Removing EAFModules for: " $Name
            Remove-ItemProperty -Path $Key.PSPath -Name "EAFModules" -ErrorAction Stop;
        }

        # Remove the FilterFullPath value if there is nothing else
        if (($Key.SubKeyCount -eq 0) -and ($Key.ValueCount -eq 1) -and ($Key.GetValue("FilterFullPath"))) {
            Remove-ItemProperty -Path $Key.PSPath -Name "FilterFullPath" -ErrorAction Stop;
        }

        # If the key is empty now, delete it
        if (($Key.SubKeyCount -eq 0) -and ($Key.ValueCount -eq 0)) {
            Write-Host "Removing empty Entry:                " $Name
            Remove-Item -Path $Key.PSPath -ErrorAction Stop
        }
    }
    Catch {
        Write-Host "ERROR:" $_.Exception.Message "- at ($MitigationItemName)"
    }
}

# Delete all ExploitGuard ProcessMitigations
function Remove-All-ProcessMitigations {

    Get-ChildItem -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options" | ForEach-Object {
        $MitigationItem = $_;
        $MitigationItemName = $MitigationItem.PSChildName

        Try {
            Remove-ProcessMitigations $MitigationItem $MitigationItemName

            # "UseFilter" indicate full path filters may be present
            if ($MitigationItem.GetValue("UseFilter")) {
                Get-ChildItem -Path $MitigationItem.PSPath | ForEach-Object {
                    $FullPathItem = $_
                    if ($FullPathItem.GetValue("FilterFullPath")) {
                        $Name = $MitigationItemName + "-" + $FullPathItem.GetValue("FilterFullPath")
                        Write-Host "Removing FullPathEntry:              " $Name
                        Remove-ProcessMitigations $FullPathItem $Name
                    }

                    # If there are no subkeys now, we can delete the "UseFilter" value
                    if ($MitigationItem.SubKeyCount -eq 0) {
                        Remove-ItemProperty -Path $MitigationItem.PSPath -Name "UseFilter" -ErrorAction Stop
                    }
                }
            }
            if (($MitigationItem.SubKeyCount -eq 0) -and ($MitigationItem.ValueCount -eq 0)) {
                Write-Host "Removing empty Entry:                " $MitigationItemName
                Remove-Item -Path $MitigationItem.PSPath -ErrorAction Stop
            }
        }
        Catch {
    [System.Windows.Forms.MessageBox]::Show("ERROR: $-.Exception.Message - at $MitigationItemName","Error");
        }
    }
}

# Delete all ExploitGuard System-wide Mitigations
function Remove-All-SystemMitigations {

    if (!(Test-IsAdmin)) {    
    [System.Windows.Forms.MessageBox]::Show("Are you running as administrator?","Error");; return
    }

    $Kernel = Get-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel"

    Try {
        if ($Kernel.GetValue("MitigationOptions"))
            { Write-Host "Removing System MitigationOptions"
                Remove-ItemProperty -Path $Kernel.PSPath -Name "MitigationOptions" -ErrorAction Stop;
            }
        if ($Kernel.GetValue("MitigationAuditOptions"))
            { Write-Host "Removing System MitigationAuditOptions"
                Remove-ItemProperty -Path $Kernel.PSPath -Name "MitigationAuditOptions" -ErrorAction Stop;
            }
    } Catch {
    [System.Windows.Forms.MessageBox]::Show("ERROR: $_.Exception.Message - System","Error");
    }
}
Remove-All-ProcessMitigations
Remove-All-SystemMitigations
[System.Windows.Forms.MessageBox]::Show("Recovery backup in Downloads folder.","Reboot to remove protection.");
}

	elseif ($RadioButton4.Checked){

# IMPORT LOCAL XML

Add-Type -AssemblyName 'System.Windows.Forms'
$fileDialog = New-Object System.Windows.Forms.OpenFileDialog
$fileDialog.CheckPathExists = $true
if ($fileDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
    $directoryName = Split-Path $fileDialog.FileName
}
Set-ProcessMitigation -PolicyFilePath $fileDialog.Filename
[System.Windows.Forms.MessageBox]::Show("Import complete from $directoryName.","Reboot to update.");
    }
        elseif ($RadioButton5.Checked){
[System.Windows.Forms.MessageBox]::Show("Restarting computer...");  
Restart-Computer    
    }
        elseif ($RadioButton6.Checked){
Start-Process "https://github.com/neohiro/ExploitProtection"
    }   
        else {
[System.Windows.Forms.MessageBox]::Show("Please choose first." , "Error");
    }
}
} while ($dialogResult -ne "Cancel")
