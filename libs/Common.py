import os
from datetime import datetime as d
from colorama import init
from termcolor import colored

init(autoreset=True)


def read_cfg(cfg):
    if not os.path.isfile('resources/config/application_config.yaml'):
        print_error("No configuration file found on 'resources/config/' go to the directory and create a file named "
                    "'application_config.yaml'")
        quit()
    else:
        with open('resources/config/application_config.yaml') as f:
            for line in f:
                if line.startswith(cfg + ':'):
                    return line.split(':')[1].strip()


def d_now(opt):
    if opt == "l":
        return d.now().strftime("%H:%M:%S")
    elif opt == "f":
        return d.now().strftime("%Y%m%d_%H%M%S")


def print_warning(msg):
    print("[ {0} ] {1}: {2}".format(d_now("l"), colored("WARNING", 'yellow'), msg))


def print_error(msg):
    print("[ {0} ] {1}: {2}".format(d_now("l"), colored("ERROR", 'red'), msg))


def print_success(msg):
    print("[ {0} ] {1}: {2}".format(d_now("l"), colored("SUCCESS", 'green'), msg))
