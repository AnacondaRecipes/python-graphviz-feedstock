#!/usr/bin/env python

# Dask test

import dask.array as da
import platform
import sys

if platform.system() == "Windows":
    print("Skipping tests on Windows")
    sys.exit(0)

x = da.ones(4, chunks=(2,))
for fmt in ['pdf', 'png', 'dot', 'svg']:
    (x + 1).sum().visualize(filename='graph.%s' % fmt)