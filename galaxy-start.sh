#!/bin/bash

for node in (cat $IPMI_NODES);
do
    ipmi-chassis \
	--hostname=$node \
	--username=$IPMI_USER \
	--password=$IPMI_PASS \
	--on-if-off \
	--wait-until-on
done
