@echo on
set "PATH=%LIBRARY_BIN%;%PATH%"
set "LIBARCHIVE=%LIBRARY_BIN%\libarchive.dll"

:: Sanity check: does graphviz import?
%PYTHON% -c "import graphviz" || exit /b 1

pip check
pytest tests -v