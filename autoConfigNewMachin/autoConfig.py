import json
import os
import sys
import re

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
        for command_key in config[step]:
            command_val = config[step][command_key]
            print(command_val)
            if re.match(r'cd', command_val, re.M | re.I):
                command_val = re.sub(r'cd ', "", command_val) # 通过字符串匹配替换 完成匹配删除的效果
                print(command_val)
                # 可以添加异常捕获，当文件夹不存在的时候，继续往下跑
                os.chdir(command_val) # 或者不加，当切换目录失败，以为一下的命令，有可能会出问题
            else:
                os.system(command_val)



if __name__ == "__main__":
    configSteps, configSwith = readConfig()
    for step in configSteps:
        runConfigSteps(step, configSteps, configSwith)