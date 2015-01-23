if %potioncount% equ 0 goto nopotions
if %health% equ 20 goto fullHealth
if %potioncount% gtr 0 goto haspotions

:back
if %potioncount% equ 0 set haspotion=false
if %health% gtr 15 goto more
goto less

:more
set /a recovered=20-%health%
echo You use a potion and recover %recovered% hearts!
set /a health=20
echo Health is now %health% hearts
echo Potion count now at %potioncount%!
trans

:less
echo You use a potion to recover 5 hearts!
set /a health+=5
echo Health is now %health% hearts
echo Potion count now at %potioncount%!
trans

:haspotions
set /a potioncount-=1
goto back

:nopotions
echo You have no potions to use!
echo Health not restored
trans

:fullHealth
echo You are at full health!
echo Potion not consumed!
trans