#!/bin/bash

cd vulcan

echo "Starting vulcand ..."
fleetctl destroy vulcan@{1..3}.service; fleetctl unload vulcan@.service; fleetctl destroy vulcan@.service; fleetctl submit vulcan@.service; fleetctl start vulcan@{1..3}.service

echo "Starting the discovery sidekick ..."
fleetctl destroy discovery@{1..3}.service; fleetctl unload discovery@.service; fleetctl destroy discovery@.service; fleetctl submit discovery@.service; fleetctl start discovery@{1..3}.service

cd ../wordpress

echo "Starting wp-admin ..."
fleetctl destroy wordpress-admin.service; fleetctl unload wordpress-admin.service; fleetctl submit wordpress-admin.service; fleetctl start wordpress-admin.service

echo "Starting wordpress ..."
fleetctl destroy wordpress@{1..5}.service; fleetctl unload wordpress@.service; fleetctl destroy wordpress@.service; fleetctl submit wordpress@.service; fleetctl start wordpress@{1..5}.service

echo "All done."
