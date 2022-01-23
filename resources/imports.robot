*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Library     DebugLibrary
Library     OperatingSystem
Resource    ../keywords/api/api_imports.robot
Variables   config/application_config.yaml
Variables     ../libs/ExcelLoad.py