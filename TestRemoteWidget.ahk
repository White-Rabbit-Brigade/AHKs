#include FunctionLibrary.ahk

file=C:\My Dropbox\Public\remotewidget.txt

;Loop
;{
var:=UrlDownloadToVar("http://www.weather.com/weather/today/Garland+TX+75042")
RegExMatch(var, "realTemp.{10}", var)
RegExMatch(var, "\d+", var)
rand:=Random(100, 999)
FileDelete, %file%
FileAppend, Current Temp is: %var%`r`nhello, %file%
FileAppend, %rand%`r`nhello, %file%
FileAppend, `r`nft, %file%
;SleepSeconds(20)
;}
