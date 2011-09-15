#!/usr/bin/python

import os
import random

source_root = os.path.expanduser('~/projects')
source_extensions = ['.' + e for e in ['rb', 'hs', 'c', 'py', 'java', 'php', 'haml', 'css', 'sass', 'html',
'erb', 'sh', 'js']]

source_files = []

for (dirpath, dirnames, filenames) in os.walk(source_root):
    source_files += [os.path.join(dirpath, f) for f in filenames if os.path.splitext(f)[1] in source_extensions]

for line in open(random.choice(source_files)):
    print line,
