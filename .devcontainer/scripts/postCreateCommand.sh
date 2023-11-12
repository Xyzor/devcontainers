#! /bin/bash

# From Windows host, the project gets mounted with root user
sudo chown node -R ${CONTAINER_WORKSPACE_FOLDER} && sudo chgrp node -R ${CONTAINER_WORKSPACE_FOLDER}

cp ${CONTAINER_UTILS_FOLDER}/.bash_aliases ~
cat ${CONTAINER_UTILS_FOLDER}/.bashrc >> ~/.bashrc
source ~/.bashrc
