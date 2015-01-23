set toEquip=%1
for %%a in (%inventory%) do (if %%a==%toEquip% goto %%a)
goto notInv

:key
echo You cannot equip that item!
trans

:potion
echo You cannot equip that item!
trans

:club
set Equppied=club
set /a attack=2
echo You equip the %Equipped%
trans

:sword
set Equipped=sword
set /a attack=3
echo You equip the %Equipped%
trans

:notInv
echo Sorry that item is not in your inventory!
trans