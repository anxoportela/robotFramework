import fnmatch as f
import os
import pandas as pd
from datetime import datetime as d
from pathlib import Path as p


def tests():
    excel = p('resources/testing.xlsx')
    df = pd.read_excel(excel)
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
        now = d.now()
        dt_string = now.strftime("%Y%m%d_%H%M%S")
        os.system("robot -d results/" + dt_string + " -L TRACE -b debug.log " + test)


runtests()
