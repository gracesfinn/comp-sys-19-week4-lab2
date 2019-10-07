#!/bin/bash
#This is a script which uses the webserver-eth1-trafffic2.pcap to confirm that ethernet frames were recieved from the 
# dbserver using the MAC address.

tshark -r /vagrant/webserver-eth1-traffic2.pcap -T fields -e ip -e eth | grep "08:00:27:d1:80:3b"
