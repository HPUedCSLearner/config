import json
import os

from lib.utils import printBlock
from lib.utils import loadJson


# 读取配置文件
def readConfig():
    config_file = "./config.json"
    config = loadJson(config_file)
    configSteps = config["configSteps"]  
    configSwith = config["configSwith"]  
    return configSteps, configSwith

# run commmand 
def runConfigSteps(step, config, switch):
    printBlock(step + ".......")
    if switch[step] == "ON":
        for command in config[step]:
            print(config[step][command])
            os.system(config[step][command])



if __name__ == "__main__":
    configSteps, configSwith = readConfig()
    for step in configSteps:
        runConfigSteps(step, configSteps, configSwith)