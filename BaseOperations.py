import yaml
import os
import errno

class BaseOperations:
    def __init__(self):
        self.configurations = None
        CONFIGURATION_FILE_NAME = "configurations.yaml"

        if not os.path.exists(CONFIGURATION_FILE_NAME):
            raise FileNotFoundError(errno.ENOENT, os.strerror(errno.ENOENT), CONFIGURATION_FILE_NAME) 
        
        with open(CONFIGURATION_FILE_NAME, "r") as stream:
           self.configurations = yaml.load(stream)