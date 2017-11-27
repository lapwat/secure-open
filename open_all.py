#!/usr/bin/env python

import os
from subprocess import call

# list files
path = '/app/data'
ls = [os.path.join(path, file) for file in os.listdir(path)]
files = [file for file in ls if os.path.isfile(file)]

# define renderers
renderers = [
	{
		'all_at_once': True,
		'app': 'feh',
		'extensions': ('.tif', '.bmp', '.png', '.svg', '.jpg', '.jpeg')
	},
	{
		'all_at_once': False,
		'app': 'xpdf',
		'extensions': ('.pdf')
	},
	{
		'all_at_once': False,
		'app': 'mpg123',
		'extensions': ('.wav', '.flac', '.mp3')
	}
]

for renderer in renderers:
	associated_files = [file for file in files if file.endswith(renderer['extensions'])]
	if renderer['all_at_once']:
		call([renderer['app']] + associated_files)
	else:
		for file in associated_files:
			call([renderer['app'], file])
