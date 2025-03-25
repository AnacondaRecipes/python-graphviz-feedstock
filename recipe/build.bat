@echo on
:: Ensure libarchive DLL is discoverable by Python
set "LIBARCHIVE=%LIBRARY_BIN%\libarchive.dll"
set "PATH=%LIBRARY_BIN%;%PATH%"

%PYTHON% -m pip install . --no-deps --no-build-isolation --ignore-installed --no-cache-dir -vv