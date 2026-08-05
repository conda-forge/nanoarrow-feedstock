@echo on

cd python

%PYTHON% -m pip install -vv .
if errorlevel 1 exit 1
