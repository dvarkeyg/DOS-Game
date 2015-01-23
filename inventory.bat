IF %haspotion%==true goto haspotion
goto nopotions

:haspotion
for %%a in (%inventory%) do (echo %%a)
echo potions(%potioncount%)
trans

:nopotions
for %%a in (%inventory%) do (echo %%a)
trans

