#!/bin/bash
keypair=${USER}
publickeyfile=${HOME}/.ssh/id_rsa.pub
regions=$(ec2-describe-regions | cut -f2)

for region in $regions; do
    echo ${region}
    ec2-import-keypair --region ${region} --public-key-file ${publickeyfile} ${keypair}-$(echo $HOSTNAME | cut -d. -f1)
done
