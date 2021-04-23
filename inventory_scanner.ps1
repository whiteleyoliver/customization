$InventoryScannerURL = "https://www.mwwassoc.com/apps/SelfScan.exe" # Change to your fitting


$DestinationFolder = "c:\mdm" # Change to your fitting - this is the folder for the wallpaper image
$DestinationFile = "$DestinationFolder\SelfScan.exe" # Change to your fitting - this is the Wallpaper image

# Creates the destination folder on the target computer
md $DestinationFolder -erroraction silentlycontinue

# Downloads the image file from the source location
Start-BitsTransfer -Source $InventoryScannerURL -Destination "$DestinationFile"

Start-Process $DestinationFile -ArgumentList "apiKey=1003.92c7653dadbda0932c06f0a2173a2708.8f2e3befc0056ebabb3ba7bf433c4054"

# Clears the error log from powershell before exiting
    $error.clear()