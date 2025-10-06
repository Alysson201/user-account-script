# This script creates a new local user account on a Windows PC.
# It should:
# - Prompt for username and password
# - Validate input
# - Check if the user already exists
# - Create the user
# - Add the user to the "Users" group
# - Log success or failure

$username = Read-Host "Enter the new username"
$password = Read-Host "Enter the password" -AsSecureString

if (Get-LocalUser -Name $username -ErrorAction SilentlyContinue) {
    Write-Host "User already exists."
    exit
}

# Try to create the user
try {
    New-LocalUser -Name $username -Password $password -FullName $username -Description "Created by script"
    Write-Host "✅ User $username created successfully."
}
catch {
    Write-Host "❌ Failed to create user $username. Error: $($_.Exception.Message)"
}

# Small delay to ensure the account registers
Start-Sleep -Seconds 2

# Try to add the user to the group
try {
    Add-LocalGroupMember -Group "Users" -Member $username
    Write-Host "✅ User $username added to 'Users' group."
}
catch {
    Write-Host "⚠️ User created, but could not be added to 'Users' group. Error: $($_.Exception.Message)"
}
