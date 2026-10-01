#!/bin/bash
set -x

############################################
# DSI CONSULTING INC. Project setup script #
############################################
# This script creates standard analysis and output directories
# for a new project. It also creates a README file with the
# project name and a brief description of the project.
# Then it unzips the raw data provided by the client.

if [ -d newproject ]; then
  echo "Recreating the newproject directory"
  rm -rf newproject
fi
mkdir newproject
cd newproject

mkdir analysis output
touch README.md
touch analysis/main.py

# download client data
curl -Lo rawdata.zip https://github.com/UofT-DSI/shell/raw/refs/heads/main/02_activities/assignments/rawdata.zip
unzip -q rawdata.zip

###########################################
# Complete assignment here

mkdir data
mv rawdata data/raw
ls data/raw
mkdir data/processed
mkdir data/processed/server_logs data/processed/user_logs data/processed/event_logs
cp data/raw/*server*.log data/processed/server_logs/
cp data/raw/*user_log_*.log data/processed/user_logs/
cp data/raw/*event_log_*.log data/processed/event_logs/
rm data/raw/*ipaddr*
rm data/processed/user_logs/*ipaddr*
find data/processed -type f > data/inventory.txt
###########################################

echo "Project setup is complete!"