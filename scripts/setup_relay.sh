#!/bin/bash

# Copy over torrc file (placed in home directory by envy)
sudo cp ~/torrc /etc/tor/torrc
# Restart tor to get the relay going
sudo service tor reload
