@echo on
set "PATH=%LIBRARY_BIN%;%PATH%"
set "LIBARCHIVE=%LIBRARY_BIN%\libarchive.dll"

pip check
pytest tests -v