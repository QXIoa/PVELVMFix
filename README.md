ever get tired of stupid split storage on pve? yes? no? well i dont really care. I got this from https://www.reddit.com/r/toordotone/comments/souiub/remove_locallvm_from_proxmox/ created by @toorone but im putting here for easy access, credits to him tho!

*** WARNING *** Only do this on a fresh install or you may loose data with already installed VMs. 

Click on “Datacenter” and then click on “Storage”.

    Click on “local-lvm” and click on “Remove” (Don’t worry, it’s not a bad thing)

    Once it is removed, click on the node and click “shell”.

    Enter the following commands:

lvremove /dev/pve/data

lvresize -l +100%FREE /dev/pve/root

resize2fs /dev/mapper/pve-root

---------------------------------------------

or if ur way too lazy like me run this (i have not tested it! use at ur own risk):

`curl https://raw.githubusercontent.com/QXIoa/PVELVMFix/refs/heads/main/lvmfix.sh | bash`