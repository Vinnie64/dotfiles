from pathlib import Path
import shutil
import json

home = str(Path.home())

with open('files_to_copy.json') as filesfile:
    files = json.load(filesfile)

for file in files:
    shutil.copy(f"{home}/dotfiles/{file}", "{home}")
