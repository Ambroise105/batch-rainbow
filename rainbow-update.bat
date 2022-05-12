:: Specifier la version actuelle a jour ::
IF EXIST "c:\rainbow2101.txt" GOTO END

:: Ajouter une ligne lorsqu'une version est outdated ::
IF EXIST "c:\rainbow2100.txt" GOTO UPDATE2100
IF EXIST "c:\rainbow1999.txt" GOTO UPDATE1999
IF EXIST "c:\rainbow1995.txt" GOTO UPDATE1995
IF EXIST "c:\rainbow1800.txt" GOTO UPDATE1800


:: VERSION 2100 ::
:UPDATE2100
:: Désinstalle l'ancienne verison ::
msiexec /x \\domaine.local\netlogon\rainbow\outdated\rainbow2100.msi /quiet /norestart
del "c:\rainbow2100.txt"
:: Installe la nouvelle version ::
msiexec /i \\domaine.local\netlogon\rainbow\rainbow2101.msi /quiet /norestart /qf
echo "MAJ Rainbow 2.101 le %date% a %time%" > "c:\rainbow2100.txt"
GOTO END


:: VERSION 1999 ::
:UPDATE1999
:: Désinstalle l'ancienne verison ::
msiexec /x \\domaine.local\netlogon\rainbow\outdated\rainbow2100.msi /quiet /norestart
del "c:\rainbow1999.txt"
:: Installe la nouvelle version ::
msiexec /i \\domaine.local\netlogon\rainbow\rainbow2101.msi /quiet /norestart /qf
echo "MAJ Rainbow 2.101 le %date% a %time%" > "c:\rainbow2100.txt"
GOTO END


:: VERSION 1995 ::
:UPDATE1995
:: Désinstalle l'ancienne verison ::
msiexec /x \\domaine.local\netlogon\rainbow\outdated\rainbow2100.msi /quiet /norestart
del "c:\rainbow1995.txt"
:: Installe la nouvelle version ::
msiexec /i \\domaine.local\netlogon\rainbow\rainbow2101.msi /quiet /norestart /qf
echo "MAJ Rainbow 2.101 le %date% a %time%" > "c:\rainbow2100.txt"
GOTO END


:: VERSION 1800 ::
:UPDATE1800
:: Désinstalle l'ancienne verison ::
msiexec /x \\domaine.local\netlogon\rainbow\outdated\rainbow2100.msi /quiet /norestart
del "c:\rainbow1800.txt"
:: Installe la nouvelle version ::
msiexec /i \\domaine.local\netlogon\rainbow\rainbow2101.msi /quiet /norestart /qf
echo "MAJ Rainbow 2.101 le %date% a %time%" > "c:\rainbow2100.txt"
GOTO END

:END