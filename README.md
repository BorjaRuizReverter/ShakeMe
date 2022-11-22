# ShakeMe

This repository is a mobile app made in Dart to test and learn about the open source Flutter framework.

This app suggest nice cocktails depending on the drinks available on your cellar.

## Instalation (for Windows)

For running this app you will need:
1. A friendly environment for programming such as VisualStudioCode, which you can find and download from [here](https://code.visualstudio.com/Download)
2. The Flutter SDK, which can be downloaded from [here](https://docs.flutter.dev/get-started/install)
3. A simulation environment for testing such as AndroidStudio, which you can download from [here](https://developer.android.com/studio)

If you already have VisualStudioCode installed (step1), please follow to step2. Proceed to download the zip file as told in step2. Unzip this file and locate this folder on any place in your local machine, avoiding blank spaces in the name of the path. Some suggestions are C:\flutter our C:\src\flutter.

After that, in order to use the flutter commands from terminal, it is required to add such new path to the Windows environment variables. So append the path the flutter binaries (flutter\bin) in the PATH variavel.

To update the PATH, if any terminal was running it will be needed to restart it. If everything was well done, the available commands for flutter should display on terminal if you run this:

```shell
flutter
```

Now, you can proceed with step3. For that, download AndroidStudio and install it.
 
Flutter depends on that AndroidStudio tools. You can check if Flutter connected properly to AndroidStudio by running:
```shell
flutter doctor
```

If Flutter did not locate the installaion, run:
 ```shell
flutter config --android-studio-dir <directory> 
```
just to set the directory that Android Studio is installed to.

## Cloning
If you have succeed with the instalation, feel free to clone the repository on your desired folder:
```shell
git clone https://github.com/BorjaRuizReverter/ShakeMe.git
```
Then navigate to the new folder recently created:
```shell
cd ShakeMe
```

