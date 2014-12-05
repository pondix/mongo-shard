#!/bin/sh

BIN_DIR=/usr/bin
CONF_PATH=/root/mongo-conf

# Replica-1
$BIN_DIR/mongod -f "$CONF_PATH/mongod-s1-1"
$BIN_DIR/mongod -f "$CONF_PATH/mongod-s1-2"
$BIN_DIR/mongod -f "$CONF_PATH/mongod-s1-3"

# Replica-2
$BIN_DIR/mongod -f "$CONF_PATH/mongod-s2-1"
$BIN_DIR/mongod -f "$CONF_PATH/mongod-s2-2"
$BIN_DIR/mongod -f "$CONF_PATH/mongod-s2-3"

$BIN_DIR/mongod -f "$CONF_PATH/mongo-config-1"
$BIN_DIR/mongod -f "$CONF_PATH/mongo-config-2"
$BIN_DIR/mongod -f "$CONF_PATH/mongo-config-3"

$BIN_DIR/mongos -f "$CONF_PATH/mongos-1"
