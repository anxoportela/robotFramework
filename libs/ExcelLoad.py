import pandas as pd
import Common as c
from pathlib import Path as f


def load_data():
    excel = f(c.read_cfg('excel_file'))
    df = pd.read_excel(excel, sheet_name=c.read_cfg('excel_sheet'))
    for row in df.itertuples():
        if row.TestName == c.whoami():
            return row


exceldata = load_data()
