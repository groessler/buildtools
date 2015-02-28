# MAME Build Tools

1. Download [install.exe](https://github.com/mamedev/buildtools/releases/download/v.1.0.0/install.exe) and complete installation. It will take some time to pull up-to-date code
2. Start  ```buildtools.bat ``` (plain cmd) or  ```cmder.exe ``` (fancy console) from installed folder (by default it is C:\buildtools)
3. Install mingw
  - For 32 bit OS
    ```
      install-mingw32
    ```
  - For 64 bit OS
    ```
      install-mingw64
    ```
4. Install SDL
    ```
      install-sdl
    ```
5. Install QT (optional)
    ```
      install-qt
    ```
6. Download MAME source

    ```
      git clone https://github.com/mamedev/mame.git
    ```

Console emulator is based on [Cmder](https://github.com/mamedev/buildtools/blob/master/Readme-Cmder.md), with some small changes in scripts.


## License

All software included is bundled with own license

