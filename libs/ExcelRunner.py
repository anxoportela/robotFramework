import fnmatch as f
import os
import pandas as pd
from datetime import datetime as d


def tests():
    df = pd.read_excel('resources/testing.xlsx')
    result = []
    for row in df.itertuples():
        if row.Run == "Y":
            for root, dirs, files in os.walk('testcases'):
                for name in files:
                    if f.fnmatch(name, row.TestName + "*"):
                        result.append(os.path.join(root, name))
    return result


def runtests():
    now = d.now()
    dt_string = now.strftime("%Y%m%d_%H%M%S")
    execute = "robot -d results/" + dt_string + " -L TRACE -b debug.log "
    for test in tests():
        execute += test + " "
    os.system(execute)


runtests()
