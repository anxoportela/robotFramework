
def read_cfg(cfg):
    with open('resources/config/application_config.yaml') as f:
        for line in f:
            if line.split(': ')[0] == cfg:
                return line.split(': ')[1].strip()
