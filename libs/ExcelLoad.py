import pandas as pd
from robot.libraries.BuiltIn import BuiltIn as b
from pathlib import Path as p


def whoami():
    tmp = b().get_variable_value("${SUITE SOURCE}").split("/")
    tmp.reverse()
    out = tmp[0].split(".")[0]
    return out


def load_data():
    excel = p('resources/testing.xlsx')
    df = pd.read_excel(excel)
    for row in df.itertuples():
        if row.TestName == whoami():
            return row


exceldata = load_data()
