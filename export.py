from pathlib import Path
import shutil
import json

home = '/home/fitti'

with open(f'{home}/dotfiles/files_to_copy.json') as filesfile:
    files = json.load(filesfile)

for file in files:
    namelist = file.split("/")
    filename = namelist[-1]
    shutil.copy(f"{home}/dotfiles/{filename}", f"{file}")
