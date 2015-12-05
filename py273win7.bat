::download python
wget --no-check-certificate https://www.python.org/ftp/python/2.7.3/python-2.7.3.msi

::run installer
python-2.7.3.msi

::download and run pip
wget --no-check-certificate https://bootstrap.pypa.io/get-pip.py
C:\Python27\python.exe get-pip.py

::add python to path environment variables
setx PATH "%PATH%;C:\Python27"
refreshenv

:: check pip version
python -m pip --version
::should produce this
::pip 7.1.2 from C:\Python27\lib\site-packages (python 2.7)

::run pip module with python and install a simple pyodbc package
python -m pip install pyodbc
