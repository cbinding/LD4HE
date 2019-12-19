set dot="C:\Program Files (x86)\Graphviz2.38\bin\dot.exe"
for /f %%f in ('dir /B /L .\*.dot') do (
	%dot% -Tsvg %%f -o ..\pages\docs\img\%%~nf.svg
	%dot% -Tpng %%f -o ..\pages\docs\img\%%~nf.png
	%dot% -Tpdf %%f -o ..\pages\docs\img\%%~nf.pdf
)
