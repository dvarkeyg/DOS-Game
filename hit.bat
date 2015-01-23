set /a damage = %random%*attack/32767+1
set /a health-=%damage%
echo You were hit for %damage% hearts
If %health% LEQ 0 goto :GameOver
health

:GameOver
Echo You DIED!
ping -n 4 localhost>nul
GameOverScreen
