# Source: https://hub.docker.com/search?image_filter=official&q=&type=image&operating_system=linux
FROM node:20.9.0-bookworm
ENV DEBIAN_FRONTEND=noninteractive
ARG USERNAME=node

RUN apt update

# [Optional] Add sudo support. Omit if you don't need to install software after connecting.
# vscode devcontainer has a bug where the remoteUser won't get access to root files.
RUN apt install -y sudo \
	&& echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
	&& chmod 0440 /etc/sudoers.d/$USERNAME

RUN apt install -y vim

ENV DEBIAN_FRONTEND=dialog