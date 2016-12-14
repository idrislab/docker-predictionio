#!/bin/bash

pio-start-all

jps -l

pio app new misq

#python data/import_eventserver.py --access_key <your_access_key> --file data/train.tsv

#pio build && pio train && pio deploy
