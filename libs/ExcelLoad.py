import pandas as pd
import Common as c
from pathlib import Path as p
from pathlib import Path as f
from robot.libraries.BuiltIn import BuiltIn as b


def load_data():
    df = pd.read_excel(f(c.read_cfg('excel_file')), sheet_name=c.read_cfg('excel_sheet'))
    for row in df.itertuples():
        if row.TestName == p(b().get_variable_value("${SUITE SOURCE}")).stem:
            return row


exceldata = load_data()
