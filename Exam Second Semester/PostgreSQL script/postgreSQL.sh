#! /usr/bin/bash
# Add Official PostgreSQL repo
apt install wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -~
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'

# Install PostgreSQL
sudo apt update
apt install postgresql postgresql-contrib -y

# Start using PostgreSQL
sudo -u postgres psql

# Create a database
CREATE DATABASE poormanalfred;

# Connect to database
\c poormanalfred

# Creating tables for where data will be stored
CREATE TABLE clients (id SERIAL PRIMARY KEY, first_name VARCHAR, last_name 
VARCHAR, role VARCHAR);

# Inputting data for table above
INSERT INTO clients (first_name, last_name, role) VALUES ('Victor', 'Anolu', 'Owner');
