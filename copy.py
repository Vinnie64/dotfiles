import shutil
import json

with open('files_to_copy.json') as filesfile:
    files = json.load(filesfile)

for file in files:
    shutil.copy(f"/root/{file}", "/root/dotfiles")
