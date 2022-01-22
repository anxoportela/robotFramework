import os
from datetime import datetime as d


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


def colorize_text(r, g, b, text):
    return "\033[38;2;{};{};{}m{} \033[38;2;255;255;255m".format(r, g, b, text)


def print_warning(msg):
    print("[" + d_now("l") + "] " + colorize_text(255, 255, 0, "WARNING:") + msg)


def print_error(msg):
    print("[" + d_now("l") + "] " + colorize_text(255, 0, 0, "ERROR:") + msg)


def print_success(msg):
    print("[" + d_now("l") + "] " + colorize_text(0, 255, 0, "SUCCESS:") + msg)
