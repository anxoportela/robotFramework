import pandas as pd
import Common as c
from pathlib import Path as f


def load_data():
    excel = f('resources/testing.xlsx')
    df = pd.read_excel(excel, sheet_name=c.read_cfg())
    for row in df.itertuples():
        if row.TestName == c.whoami():
            return row


exceldata = load_data()
