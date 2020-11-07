FROM gitpod/workspace-full

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

RUN sudo apt-get update \
    && sudo apt-get -y install --no-install-recommends apt-utils dialog 2>&1 \
    && sudo apt-get install software-properties-common -y \
    && sudo apt-get install ffmpeg nodejs npm -y \
    && sudo apt-get install wget curl ca-certificates -y \
    && sudo apt-get install libavdevice-dev

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog
