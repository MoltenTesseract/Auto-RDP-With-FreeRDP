# Import CSV
$CSV = Import-CSV Logins.csv

# Cycle Through each entry
ForEach ($User in $CSV) {

# Set some easy variables
    $Username = $User.Username
    $Password = $User.Password
    $Hostname = $User.Password

    # Actually run the RDP - Note wfreerdp provides no output on success or error.
    .\wfreerdp.exe /v:$Hostname /u:$Username /p:$Password

    # Wait 5 seconds for good measure
    Start-Sleep -Seconds 5
    # Need to do the confirm if worked and continue sections.

}