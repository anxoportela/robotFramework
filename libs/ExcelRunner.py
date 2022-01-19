import fnmatch
import os
import pandas as pd

df = pd.read_excel('resources/testing.xlsx')


def tests():
    result = []
    for row in df.itertuples():
        if row.Run == "Y":
            for root, dirs, files in os.walk('testcases'):
                for name in files:
                    if fnmatch.fnmatch(name, row.TestName + "*"):
                        result.append(os.path.join(root, name))
    return result


def runtests():
    execute = "robot -d result -L TRACE -b debug.log "
    for test in tests():
        execute += test + " "
    os.system(execute)


runtests()
