If %1==potion goto potion
goto notpotion

:potion
If %haspotion%==true goto haspotion
goto nopotion

:haspotion
set /a potioncount+=1
echo You take the potion with you
trans

:nopotion
set /a potioncount+=1
set haspotion=true
echo You take the potion with you
trans

:notpotion
If %space% equ 0 goto nospace
echo You take the %1 with you
set inventory=%inventory% %1
set /a space-=1
trans

:nospace
echo You cannot carry any more items!
echo Drop items to carry more!
trans