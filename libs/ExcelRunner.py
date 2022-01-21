import os
import Common as c
import fnmatch as f
import pandas as pd
from pathlib import Path as p
from datetime import datetime as d


def runtests():
    df = pd.read_excel(p(c.read_cfg('excel_file')), sheet_name=c.read_cfg('excel_sheet'))
    for row in df.itertuples():
        if row.Run == "Y":
            for root, dirs, files in os.walk(c.read_cfg('tests_folder')):
                for name in files:
                    if f.fnmatch(name, row.TestName + ".robot"):
                        os.system("robot -d results/{0} -L {1} -b debug.log {2}".
                                  format(d.now().strftime("%Y%m%d_%H%M%S"), c.read_cfg('log_info'),
                                         os.path.join(root, name)))


runtests()
