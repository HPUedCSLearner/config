import json
import os

def printBlock(string):
    print("==============================================")
    print(string)
    print("==============================================")
    
def loadJson(filepath):
    # os.system("pwd") # run dir
    with open(filepath) as file:
        return json.load(file)