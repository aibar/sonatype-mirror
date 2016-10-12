#!/bin/bash

Version=2.14.0-01

Nexus=nexus-${Version}.tar.gz

if [ ! -f ${Nexus} ]
then
    wget http://www.sonatype.org/downloads/nexus-${Version}-bundle.tar.gz \
         -O ${Nexus}
fi

curl https://api.bintray.com/content/walkingdevs/mirrors/sonatype/${Version}/${Nexus} -v -# \
     -uaibar:${BintrayKey} \
     -T ${Nexus}