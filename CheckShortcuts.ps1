# Function to update the shortcut path
function Update-Shortcut {
    param (
        [string]$ShortcutPath,
        [string]$NewTargetPath
    )
    $shell = New-Object -ComObject WScript.Shell
    $shortcut = $shell.CreateShortcut($ShortcutPath)
    $shortcut.TargetPath = $NewTargetPath
    $shortcut.Save()
}

# Relative Paths to the shortcut files
$shortcutPaths = @(".\bin\shortcuts\Tagtool_shortcut.lnk", ".\bin\shortcuts\TouchPlayer_shortcut.lnk")

# Loop through each shortcut and verify
foreach ($shortcutPath in $shortcutPaths) {
    # Make the path absolute based on the script's current location
    $absoluteShortcutPath = [System.IO.Path]::GetFullPath($shortcutPath)
    
    # Read the shortcut file
    $shell = New-Object -ComObject WScript.Shell
    $shortcut = $shell.CreateShortcut($absoluteShortcutPath)

    $targetPath = $shortcut.TargetPath

    # Check if the target exists
    if (Test-Path $targetPath) {
        Write-Host "$targetPath exists."
    }
    else {
        Write-Host "$targetPath does not exist."

        # Ask for the new path
        $newPath = Read-Host "Please enter the new path for $targetPath"

        # Update the shortcut
        Update-Shortcut -ShortcutPath $absoluteShortcutPath -NewTargetPath $newPath
        Write-Host "Updated the shortcut to point to $newPath"
    }
}
