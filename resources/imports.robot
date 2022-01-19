*** Settings ***
Library     RequestsLibrary
Library     DebugLibrary
Library     Zoomba.GUILibrary
Library     Zoomba.MobileLibrary
Library     ../libs/VarLoad.py
Resource    ../keywords/web/web_imports.robot
Resource    ../keywords/api/api_imports.robot
Resource    ../keywords/mobile/mobile_imports.robot
Variables   config/application_config.yaml