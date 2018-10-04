#! /usr/bin/env bash

# Copyright 2014 Uno authors (see AUTHORS)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

source "$UNO_HOME"/bin/impl/util.sh

pkill -f QuorumPeerMain

# stop if any command fails
set -e

rm -f "$ZOO_LOG_DIR"/*
rm -rf "$DATA_DIR"/zookeeper
mkdir -p "$ZOO_LOG_DIR"

"$ZOOKEEPER_HOME"/bin/zkServer.sh start

print_to_console "Apache ZooKeeper $ZOOKEEPER_VERSION is running"
print_to_console "    * view logs at $ZOO_LOG_DIR"