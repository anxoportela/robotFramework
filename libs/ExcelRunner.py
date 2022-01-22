import glob
import os
import Common as c
import pandas as pd
import chromedriver_autoinstaller as ci
import geckodriver_autoinstaller as gi
from pathlib import Path as p
from openpyxl import load_workbook as lw


def runtests():
    now = c.d_now("f")
    wb = lw(p(c.read_cfg('excel_file'), read_only=True))
    if not c.read_cfg('excel_sheet') in wb.sheetnames:
        if c.read_cfg('excel_sheet'):
            c.print_error("No sheet called '{0}' found on '{1}'".
                          format(c.read_cfg('excel_sheet'), p(c.read_cfg('excel_file')).name))
            quit()
        else:
            c.print_error("Empty variable 'excel_sheet' on '{0}'".format(p(c.read_cfg('config_file')).name))
            quit()
    else:
        df = pd.read_excel(p(c.read_cfg('excel_file')), sheet_name=c.read_cfg('excel_sheet'))
        if not df.empty:
            c.print_success("'{0}' sheet loaded successfully".format(c.read_cfg('excel_sheet')))
            for row in df.itertuples():
                if row.Run.lower() == "y":
                    file_test = glob.glob(c.read_cfg('tests_folder') + "/**/" + row.TestName + ".robot")
                    if file_test:
                        if row.Device.lower() == "chrome":
                            ci.install()
                        elif row.Device.lower() == "firefox":
                            gi.install()
                        os.system("robot -d results/{0}/{1} -L {2} -b debug.log {3}".
                                  format(now, row.TestName, c.read_cfg('log_info'), file_test[0]))
                    else:
                        c.print_error("No test file named '{0}' found".format(row.TestName + ".robot"))
                else:
                    file_test = glob.glob(c.read_cfg('tests_folder') + "/**/" + row.TestName + ".robot")
                    if file_test:
                        c.print_warning("Test suite '{0}' disabled".format(row.TestName))
                    else:
                        c.print_error("Test suite '{0}' disabled and '{1}' not found".
                                      format(row.TestName, row.TestName + ".robot"))
        else:
            c.print_error("No testcases found on '{0}' sheet".format(c.read_cfg('excel_sheet')))
            quit()


runtests()
