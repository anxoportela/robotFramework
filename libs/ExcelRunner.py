import fnmatch as f
import os
import pandas as pd
import Common as c
from datetime import datetime as d
from pathlib import Path as p


def runtests():
    df = pd.read_excel(p(c.read_cfg('excel_file')), sheet_name=c.read_cfg('excel_sheet'))
    for row in df.itertuples():
        if row.Run == "Y":
            for root, dirs, files in os.walk('testcases'):
                for name in files:
                    if f.fnmatch(name, row.TestName + ".robot"):
                        os.system("robot -d results/{0} -L TRACE -b debug.log {1}".
                                  format(d.now().strftime("%Y%m%d_%H%M%S"), os.path.join(root, name)))


runtests()
