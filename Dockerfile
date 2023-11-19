FROM node:20.9.0-bookworm

# TODO: This should come from the .env file
ARG USERNAME=node

RUN apt-get update \
    && apt-get install -y sudo \
    && echo ${USERNAME} ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/${USERNAME} \
    && chmod 0440 /etc/sudoers.d/${USERNAME}

RUN apt-get install vim

USER ${USERNAME}