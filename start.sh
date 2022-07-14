#!/usr/bin/env bash

# quick start example
# substitute trunk file as needed
# TODO: maybe args for trunk file

./rx.py \
	--nocrypt \
	--args "rtl" \
	--gains 'lna:47' \
	-S 960000 \
	-X \
	-q 0 \
	-v 1 \
	-2 \
	-V \
	-w \
	-T philadelphia/phl_mainsail.tsv \
	-l http:0.0.0.0:8080 \
	-M meta.json

### important flags ###
# --nocrypt disables tracking encrypted TGs if you are tracking wide
# -w exposes the wireshark socket that liquidsoap needs to connect
# -T specifies trunk info file
# -l exposes the built in web controller for easier monitoring
# -M configures the metadata/alpha tags sending to icecast
