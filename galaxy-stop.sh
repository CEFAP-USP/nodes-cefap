#!/bin/bash

for node in (cat $IPMI_NODES);
do
    ipmi-chassis \
	--hostname=$node \
	--username=$IPMI_USER \
	--password=$IPMI_PASS \
	--soft \
	--wait-until-off
done

#TODO:Check for Unresponsive OS and send a Power off command after a timeout
