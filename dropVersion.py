"""
    Rename TOPS-20 filespecs to regular files without version number
"""
from os import listdir, rename
import os.path
import re

SOURCEPATH = "10_7_mon"

tops20File = re.compile("(.*\.\w\w\w)(\.\d)")


files = listdir("10_7_mon")
pairs = []

for f in files:
    m = tops20File.match(f)
    if m:
        p = ( f, m.groups()[0])
        pairs.append(p)

for p in pairs:
    original = os.path.join(SOURCEPATH, p[0])
    nou = os.path.join(SOURCEPATH, p[1])
    os.rename(original, nou)
