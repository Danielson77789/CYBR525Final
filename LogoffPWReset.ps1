#Insert username between single quotes for the username variable
#Set a strong password in the last line between the double quotes

$username = ''
$killsession = ''

foreach($ServerLine in ((quer $username) -split "/n")){

  $SessionID = $ServerLine -split '\s+'
  $killsession = $SessionID[2]
}

echo $killsession
logoff killsession
Disable-ADAccount -Identity $username
Set-ADAccountPassword -Identity $username -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "" -Force)
