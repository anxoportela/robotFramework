## Simple testing framework using RobotFramework, SeleniumLibrary, HTTP RequestsLibrary and AppiumLibrary

- [Introduction](#introduction)
- [Pre-Requisites](#pre-requisites)
- [Installation](#installation)
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



### Pre-Requisites

- IntelliJ 2021.3 (or PyCharm 2021.3)
- Python 3.10
- Node v17.3
- Android Studio 2020.3
- OpenJDK Runtime Environment (build 1.8.0_312-b10)



### Installation


#### IDE

- Install the following extensions.
    - [Robot Framework Language Server](https://plugins.jetbrains.com/plugin/16086-robot-framework-language-server)
    - :warning:Only IntelliJ -> [Python Community Edition](https://plugins.jetbrains.com/plugin/7322-python-community-edition)
    - [Requirements](https://plugins.jetbrains.com/plugin/10837-requirements)


#### Base Project

- Clone the repo:
    - Option A: Use your prefered git gui
    - Option B: Use embedded IntelliJ/PyCharm git interface
    - Option C:
    
    ` git clone -b master --single-branch https://github.com/anxoportela/robotFramework.git saveFolder `

- With the project open on your IDE and its terminal or in a system terminal on the project root, install the required python packages:

    ` pip install -r requirements.txt `


#### Appium Android Configuration

:building_construction: WORK IN PROGRESS :building_construction:



### How to launch Testsuites

All test are launched through the Makefile file, either you click the :play_or_pause_button: on the ide gutter or run it on the terminal. 

Here you have the various options:

 - Clean the project: ` make clean `
 - Run all Testsuites: ` make test `
 - Run only specific suites:
    - Backend: ` make test-api `
    - Frontend: ` make test-web `
    - Mobile: ` make test-mobile `

Results can be found on the results-{api|web|mobile} folder.