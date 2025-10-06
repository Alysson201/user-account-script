#User Account Creation Script

## Description
It is a PowerShell script that creates new local user account on Windows computer and adds it to the **Users** group.
It will ask for a username and password, checks if the user already exist, and handles errors using try/catch blocks.
If the account is created successfully, it will display a confirmation message.

---

## Instructions for Running the Script

1. ** Open PowerShell as Administrator**
    - Click Start --> type "PowerShell" --> right click --> choose ** Run as Administrator **

2. ** Navigate to the folder that contains your script: **
    (For me, it is just set in the Documents: the command underneath is what i put in the powershell)
        cd "$env:USERPROFILE\Documents\user-account-script"

3. Once you are inside the folder that contains your script:
    type in ".\create-users.ps1"
        --> this will run the script and the following prompts will appear asking you to enter a username and password.
            --> Enter a username:
            --> Enter a password:

Notes:
-> If you use an existing username, it will show:
    User already exist
-> The script must be run with administrator privileges.