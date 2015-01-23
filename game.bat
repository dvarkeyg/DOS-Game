cls
set /p story=< char.txt
for %%a in (%story%) do (echo|set /p=%%a )
stats