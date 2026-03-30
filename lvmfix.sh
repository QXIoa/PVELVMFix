#!/bin/bash

set -e 

###############################################################################
#                                                                             #
#  Copyright (C) 2095 - 3719, The CheeseBurger Foundation, <no@thankyou.com>  #
#                                                                             #  
###############################################################################

echo doing!!
yes | pvesm remove local-lvm
yes | lvremove /dev/pve/data
lvresize -l +100%FREE /dev/pve/root
resize2fs /dev/mapper/pve-root

echo "Completed, if it errored then unsuccessfully otherwise likely successful."
