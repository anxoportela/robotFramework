import pandas as pd
import platform as p
from robot.libraries.BuiltIn import BuiltIn as b
from pathlib import Path as f


def whoami():
    if p.system() == "Windows":
        tmp = b().get_variable_value("${SUITE SOURCE}").split("\\")
    else:
        tmp = b().get_variable_value("${SUITE SOURCE}").split("/")
    tmp.reverse()
    out = tmp[0].split(".")[0]
    return out


def load_data():
    excel = f('resources/testing.xlsx')
    df = pd.read_excel(excel)
    for row in df.itertuples():
        if row.TestName == whoami():
            return row


exceldata = load_data()
