import pandas as pd


def print_whoami(text):
    tmp = text.split("/")
    tmp.reverse()
    return tmp[0].split(".")[0]


def load_data(filename):
    df = pd.read_excel('resources/testing.xlsx')
    for row in df.itertuples():
        if row.TestName == filename:
            print(row)
