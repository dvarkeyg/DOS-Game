If %1==potion goto potion
goto notpotion

:potion
if %potioncount% equ 0 goto nopotions

:loop3
echo Are you sure you want to drop a potion?(Yes/No)
set /p answer=
if %answer%==yes goto yespot
if %answer%==no goto nopot
echo Answer not valid!
goto loop3

:yespot
set /a potioncount-=1
if %potioncount% equ 0 set haspotion=false
echo You drop a potion!
goto end

:nopot
echo You hold onto the potion!
trans

:nopotions
echo YOu have no potions to drop!
trans

:notpotion
for %%a in (%inventory%) do (if %%a==%1 goto item)
goto noitem

:item
set toDrop=%1
If %toDrop%==Equipped goto equipped
goto loop2

:loop2
echo Are you sure you want to drop the %toDrop%?(Yes/No)
set /p answer=
if %answer%==yes goto normal
if %answer%==no goto no
echo Answer not valid!
goto loop2

:normal
call set inventory=%%inventory:%toDrop%=%%%%
echo You drop a %1!
set /a space +=1
goto end

:noitem
echo You do not have this item in your inventory!
trans

:end
echo Item not retrievable!
trans

:equipped
echo You have the %toDrop% equipped!
goto loop

:loop
echo Are you sure you want to drop the %toDrop%?(Yes/No)
set /p answer=
if %answer%==yes goto yes
if %answer%==no goto no
echo Answer not valid!
goto loop

:yes
set /a attack=1
set Equipped=Nothing
set /a space=1
goto normal

:no
echo You hold on to the %toDrop%!
trans
