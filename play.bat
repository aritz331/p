@echo off
curl -k "https://stivengiv.github.io/mp3/%1.mp3" -o "%temp%\b.mp3" -s
set "file=%temp%\b.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) > %temp%\a.vbs
start "" /min %temp%\a.vbs
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
del %temp%\a.vbs
del %temp%\b.mp3
exit /b