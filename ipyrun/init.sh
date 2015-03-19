#!/bin/bash

[ -d /notebooks ] && cd /notebooks
[ -f ./requirements.txt ] && pip install -r requirements.txt

ipython notebook --no-browser --ip=* --port 8888
