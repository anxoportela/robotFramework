import pandas as pd
from robot.libraries.BuiltIn import BuiltIn

suite_path = BuiltIn().get_variable_value("${SUITE SOURCE}")


def print_whoami():
    tmp = suite_path.split("/")
    tmp.reverse()
    out = tmp[0].split(".")[0]
    return out


def load_data():
    df = pd.read_excel('resources/testing.xlsx')
    for row in df.itertuples():
        if row.TestName == print_whoami():
            return row
