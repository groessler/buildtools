#!C:\buildtools\vendor\python\python.exe
# EASY-INSTALL-ENTRY-SCRIPT: 'setuptools==7.0','console_scripts','easy_install'
__requires__ = 'setuptools==7.0'
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.exit(
        load_entry_point('setuptools==7.0', 'console_scripts', 'easy_install')()
    )
