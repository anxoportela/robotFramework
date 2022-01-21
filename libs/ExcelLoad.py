import Common as c
import pandas as pd
from pathlib import Path as p
from robot.libraries.BuiltIn import BuiltIn as b


def load_data():
    df = pd.read_excel(p(c.read_cfg('excel_file')), sheet_name=c.read_cfg('excel_sheet'))
    for row in df.itertuples():
        if row.TestName == p(b().get_variable_value("${SUITE SOURCE}")).stem:
            return row


exceldata = load_data()
