*** Settings ***
Library     RequestsLibrary
Library     DebugLibrary
Library     Zoomba.GUILibrary
Library     Zoomba.MobileLibrary
Resource    ../keywords/web/web_imports.robot
Resource    ../keywords/api/api_imports.robot
Resource    ../keywords/mobile/mobile_imports.robot
Variables   config/application_config.yaml
Variables     ../libs/ExcelLoad.py