#!/bin/bash

echo '#!/bin/bash' >/usr/local/bin/jenkins-cli
echo 'java -jar /usr/share/java/jenkins-cli.jar "$@"' >>/usr/local/bin/jenkins-cli
chmod 755 /usr/local/bin/jenkins-cli
chown root:root /usr/local/bin/jenkins-cli
