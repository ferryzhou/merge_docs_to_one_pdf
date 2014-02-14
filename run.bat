set indir=..\src
set tmpdir=..\tmp
if not exist %tmpdir% mkdir %tmpdir%
del %tmpdir%\*.* /y
copy %indir%\*.docx %tmpdir%
for %%f in (%tmpdir%\*.docx) do (
  echo %%f
  OfficeToPDF %%f %%f.pdf
)

pdftk %tmpdir%\*.pdf output status_all.pdf