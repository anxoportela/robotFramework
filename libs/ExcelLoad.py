import pandas as pd
from robot.libraries.BuiltIn import BuiltIn as b


def whoami():
    tmp = b().get_variable_value("${SUITE SOURCE}").split("/")
    tmp.reverse()
    out = tmp[0].split(".")[0]
    return out


def load_data():
    df = pd.read_excel('resources/testing.xlsx')
    for row in df.itertuples():
        if row.TestName == whoami():
            return row


exceldata = load_data()
