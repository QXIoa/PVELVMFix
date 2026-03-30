ever get tired of stupid split storage on pve? yes? no? well i dont really care.

Click on “Datacenter” and then click on “Storage”.

    Click on “local-lvm” and click on “Remove” (Don’t worry, it’s not a bad thing)

    Once it is removed, click on the node and click “shell”.

    Enter the following commands:

lvremove /dev/pve/data

lvresize -l +100%FREE /dev/pve/root

resize2fs /dev/mapper/pve-root
