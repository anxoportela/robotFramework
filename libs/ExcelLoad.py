import pandas as pd
import Common as utils
from pathlib import Path as f


def load_data():
    excel = f('resources/testing.xlsx')
    df = pd.read_excel(excel, sheet_name=utils.read_cfg())
    for row in df.itertuples():
        if row.TestName == utils.whoami():
            return row


exceldata = load_data()
