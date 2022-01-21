import platform as p
from datetime import datetime as d
from robot.libraries.BuiltIn import BuiltIn as b


def read_cfg():
    file = open('resources/config/application_config.yaml')
    for lines in file:
        items = lines.split(': ')
        if items[0] == 'excel_sheet':
            return items[1]


def dt_now():
    now = d.now()
    dt_string = now.strftime("%Y%m%d_%H%M%S")
    return dt_string


def whoami():
    if p.system() == "Windows":
        tmp = b().get_variable_value("${SUITE SOURCE}").split("\\")
    else:
        tmp = b().get_variable_value("${SUITE SOURCE}").split("/")
    tmp.reverse()
    out = tmp[0].split(".")[0]
    return out
