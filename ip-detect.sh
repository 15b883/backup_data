#!/bin/sh
#
# Warning network  name ！！

set -o nounset -o errexit

# ip addr show dev eth0 primary | awk '/(inet .*\/)/ { print $2 }' | cut -d'/' -f1
#curl -fsSL http://169.254.169.254/latest/meta-data/local-ipv4

echo $(ip addr show eth0 | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)