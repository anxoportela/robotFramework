## Simple testing framework using RobotFramework, SeleniumLibrary, HTTP RequestsLibrary and AppiumLibrary

- [Introduction](#introduction)
- [Pre-Requisites](#pre-requisites)
- [Instructions](#instructions)
    + [IDE](#ide)
    + [Base Project](#base-project)
    + [Appium Android Configuration](#appium-android-configuration)
- [How to launch Testsuites](#how-to-launch-testsuites)

### Introduction

- Simple testing framework using opensource technologies like [RobotFramework](https://robotframework.org/), [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html), [HTTP RequestsLibrary](https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html) and [AppiumLibrary](https://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html).
- The tests are developed using KDB (Keyword Driven Behavior).
- Python based, can be executed in any operating system
- Expanded functionality with [Zoomba Library](https://github.com/Accruent/robotframework-zoomba)
  - [Api Library](https://accruent.github.io/robotframework-zoomba/APILibraryDocumentation.html)
  - [Web Library](https://accruent.github.io/robotframework-zoomba/GUILibraryDocumentation.html)
  - [Mobile Library](https://accruent.github.io/robotframework-zoomba/MobileLibraryDocumentation.html)
- Enhanced debugging with [RobotFramework DebugLibrary](https://github.com/xyb/robotframework-debuglibrary), step-by-step debug from the CLI and can be used as an interactive shell(REPL).
- Excel data approach, you can set the suites to run and variebles to use in a excel file.



### Pre-Requisites

- IntelliJ 2021.3 -> ` choco install intellijidea-community `
- Python 3.10 -> ` choco install python3 `
- Node v17.3 -> ` choco install nodejs `
- Android Studio 2020.3 -> ` choco install androidstudio `
- OpenJDK Runtime Environment (build 1.8.0_312-b10) -> ` choco install jdk8 `
- Chromedriver -> ` choco install chromedriver `
- Make -> ` choco install make `



### Instructions


#### IDE

- Install the following extensions.
    - [Robot Framework Language Server](https://plugins.jetbrains.com/plugin/16086-robot-framework-language-server)
    - [Python Community Edition](https://plugins.jetbrains.com/plugin/7322-python-community-edition)
    - [Requirements](https://plugins.jetbrains.com/plugin/10837-requirements)
    - (Optional) [TabNine](https://plugins.jetbrains.com/plugin/12798-tabnine-ai-code-completion-js-java-python-ts-rust-go-php--more)


#### Base Project

- Clone the repo:
    - Option A: Use your prefered git gui
    - Option B: Use embedded IntelliJ/PyCharm git interface
    - Option C:
    
    ` git clone -b master --single-branch https://github.com/anxoportela/robotFramework.git saveFolder `

- Open an administrator system terminal on the project root and install the required python packages:

    ` pip install -r requirements.txt `


#### Appium Android Configuration

 - Download and install the [Appium Desktop Application](https://github.com/appium/appium-desktop/releases/latest)
 - Open Android Studio and create a new project. The basic one is enough, it's only to install the required dependencies.
 - When all downloads are done, open AVD (Android Virtual Device Manager)
![Image00](docs/00.PNG)
 - Click on create a new virtual device
![Image01](docs/01.PNG)
 - Choose the __Pixel 4 XL__
![Image02](docs/02.PNG)
 - Click on the __x86 Images__ tab and download __Android 11__
![Image03](docs/03.PNG)
 - Name the new virtual machine __Android 11__, and finish the installation.
![Image04](docs/04.PNG)
 - Open the environment variables editor and add ` ANDROID_HOME ` as a new system variable. Change your path accordingly.
![Image05](docs/05.PNG)
 - Edit your system path to add a series of variables.
![Image06](docs/06.PNG)
 - Now you can open the Appium application and start the server.
![Image07](docs/07.PNG)
 - And open Android Studio again and start the virtual machine.
![Image08](docs/00.PNG)
![Image09](docs/08.PNG)
![Image10](docs/09.PNG)
 - Once the device it's open you can close Android Studio and every tool related to it.


### How to launch Testsuites

All test are launched through the Makefile file, either you click the :play_or_pause_button: on the ide gutter or run it on the terminal. 

Here you have the various options:

 - Clean Project: ` make clean `
 - Run Test Suites: ` make test `

Results can be found on the results/[date] folder.