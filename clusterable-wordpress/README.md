## To run this example

    fleetctl destroy vulcan@{1..3}.service; fleetctl unload vulcan@.service; fleetctl destroy vulcan@.service; fleetctl submit vulcan@.service; fleetctl start vulcan@{1..3}.service

    fleetctl destroy discovery@{1..3}.service; fleetctl unload discovery@.service; fleetctl destroy discovery@.service; fleetctl submit discovery@.service; fleetctl start discovery@{1..3}.service

    fleetctl stop wordpress-admin.service; fleetctl unload wordpress-admin.service; fleetctl destroy wordpress-admin.service; fleetctl submit wordpress-admin.service; fleetctl start wordpress-admin.service

    fleetctl stop wordpress@{1..5}.service; fleetctl unload wordpress@.service; fleetctl destroy wordpress@{1..5}.service; fleetctl destroy wordpress@.service; fleetctl submit wordpress@.service; fleetctl start wordpress@{1..5}.service

## Before you run it

1. You'll need a mysql database
Provision a VM that's reachable by the CoreOS machines, or a database publicly. You'll need to follow the wordpress guide for how to set up a wordpress database

If you decided not to go with wordpress.local, things probably won't run in this particular set up due to wordpress hardcoding nonsense.

2. Edit your hosts file

`sudo vim /etc/hosts`

    \#Add the following line
    127.0.0.1 wordpress.local

3. Edit the wordpress service files

You'll want to edit wordpress/wordpress-admin.service and wordpress/wordpress@.service, and substitute the environment variable values:

* -e WORDPRESS_DB_NAME=dbname
* -e WORDPRESS_DB_HOST=dbhost:dbport
* -e WORDPRESS_DB_USER=dbuser
* -e WORDPRESS_DB_PASSWORD=dbpassword
* -e WORDPRESS_CACHE_S3_KEY=s3key
* -e WORDPRESS_CACHE_S3_SECRET=s3secret
* -e WORDPRESS_CACHE_S3_BUCKET=s3bucket
* -e WORDPRESS_ADMIN_ENABLED=true