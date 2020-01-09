#!/bin/python
from pathlib import Path
import shutil
import json
import getpass

username = getpass.getuser()

with open(f'/home/{username}/dotfiles/files_to_copy.json') as filesfile:
    files = json.load(filesfile)

for file in files:
    namelist = file.split("/")
    filename = namelist[-1]
    shutil.copy(f"/home/{username}/dotfiles/{filename}", f"{file}")
