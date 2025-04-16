@ECHO OFF

pushd %~dp0

REM Command file for Sphinx documentation

if "%SPHINXBUILD%" == "" (
	set SPHINXBUILD=sphinx-build
)
set SOURCEDIR=source
set BUILDDIR=_build
set SPHINXPROJ=project_name_placeholder
set SPHINXOPTS=-W --keep-going

if "%1" == "help" (
	%SPHINXBUILD% -M help %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%
	goto end
)

if "%1" == "cleanbuild" (
    if exist %BUILDDIR% ( rmdir /s /q %BUILDDIR% )
    echo Running RST formatting fix script...
    py -3 fix_rst_formatting.py
    %SPHINXBUILD% -M html %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%
    goto end
)

REM Run the RST formatting fix script before building HTML
if "%1" == "html" (
    echo Running RST formatting fix script...
    py -3 fix_rst_formatting.py
)

%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%

:end
popd 