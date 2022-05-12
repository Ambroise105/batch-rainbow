IF EXIST "c:\vc2015.txt" GOTO NEXT1
:64-bit
\\domaine.local\netlogon\vc_redist_x64.exe /passive /norestart
echo "Installed Microsoft Visual C++ 2015 Redistributable - x64" > "c:\vc2015.txt"

:NEXT1
IF EXIST "c:\vstor.txt" GOTO NEXT2
:64-bit
msiexec /i \\domaine.local\netlogon\vstor\vstor40_x64.msi /quiet /norestart /qf
echo "Installed Microsoft Visual C++ 2010 for Office - x64" > "c:\vstor.txt"

:NEXT2
IF EXIST "c:\rainbow2101.txt" GOTO END

:64-bit
\\domaine.local\netlogon\rainbow\rainbow2101.exe /passive /norestart
echo "Installed Rainbow 2.101" > "c:\rainbow2101.txt"

:END
