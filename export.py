#!/bin/python
from pathlib import Path
from sys import argv
import shutil
import json
import pwd
import os

username = argv[1]

with open(f'/home/{username}/dotfiles/files_to_copy.json') as filesfile:
    files = json.load(filesfile)

for file in files:
    file = file.format(username=username)
    namelist = file.split("/")
    filename = namelist[-1]
    shutil.copy(f"/home/{username}/dotfiles/{filename}", f"{file}")
