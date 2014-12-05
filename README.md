mongo-shard
===========

A set of scripts to run a large cluster for development purposes

Installation
------------

Step 1: 
- Run "init_dirs.sh" - this will create directories for the cluster in "/mnt/mongo-data"

Step 2: 
- Run "start_instances" - this will start 2x replicasets (3 nodes per replica), 3x config servers and 1x mongos router

Step 3: 
- Run "stop_instances" when done to 'gracefully' shutdown the instances

Note: When first starting the cluster you will need to initialize the replicaset and create the 2x shards which will consist of 3x mongod processes per replicaset. These scripts create the required directories and allow you to easily start / stop the processes.




