%echo off
cd c:\Users\michaelcrane\OneDrive - wvcrane\AssignOwner
spx config @key --set 61ec5822bc0946b9936601bf7d09ed1b
spx config @region --set eastus
timeout /t 3
spx synthesize --text "state the incident ID number after the beep and hit enter" --speakers
//timeout /t 1
powershell -file "C:\Users\michaelcrane\OneDrive - wvcrane\AssignOwner\beeps.ps1"
spx recognize --microphone --output each recognized text --output each file has header false --output overwrite true --output each file incidentID.txt
spx synthesize --text "Please state owners name after the beep and then hit enter" --speakers
timeout /t 1
powershell -file "C:\Users\michaelcrane\OneDrive - wvcrane\AssignOwner\beeps.ps1"
spx recognize --microphone --output each recognized text --output each file has header false --output overwrite true --output each file assignowner.txt
//spx synthesize --text "hit the enter key to exit" --speakers
//pause


cd c:\Users\michaelcrane\OneDrive - wvcrane\AssignOwner

cmd.exe /c 'spx config @key --set 61ec5822bc0946b9936601bf7d09ed1b'

cmd.exe /c 'spx config @region --set eastus'

cmd.exe /c 'spx synthesize --text "state the incident ID number after the beep and hit enter" --speakers'

sleep 5

powershell -file "C:\Users\michaelcrane\OneDrive - wvcrane\AssignOwner\beeps.ps1"

spx recognize --microphone --output each recognized text --output each file has header false --output overwrite true --output each file incidentID.txt

spx synthesize --text "Please state owners name after the beep and then hit enter" --speakers

sleep 5

powershell -file "C:\Users\michaelcrane\OneDrive - wvcrane\AssignOwner\beeps.ps1"

cmd.exe /c 'spx recognize --microphone --output each recognized text --output each file has header false --output overwrite true --output each file assignowner.txt'
