#!/bin/bash

pio-start-all

jps -l

pio app new misq --id 2 --access-key OVobAwW87UspbSN9jI0N6JCd80FPxpGM

python data/import_eventserver.py --access_key OVobAwW87UspbSN9jI0N6JCd80FPxpGM --file data/train.tsv

pio build && pio train && pio deploy
