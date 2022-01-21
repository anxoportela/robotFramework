import fnmatch as f
import os
import pandas as pd
import Common as utils
from pathlib import Path as p


def tests():
    excel = p('resources/testing.xlsx')
    df = pd.read_excel(excel, sheet_name=utils.read_cfg())
    result = []
    for row in df.itertuples():
        if row.Run == "Y":
            for root, dirs, files in os.walk('testcases'):
                for name in files:
                    if f.fnmatch(name, row.TestName + ".robot"):
                        result.append(os.path.join(root, name))
    return result


def runtests():
    for test in tests():
        os.system("robot -d results/" + utils.dt_now() + " -L TRACE -b debug.log " + test)


runtests()
