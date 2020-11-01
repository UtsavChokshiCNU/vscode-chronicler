FROM gitpod/workspace-full

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils dialog 2>&1 \
    && apt-get install software-properties-common -y \
    && apt-get install ffmpeg nodejs npm -y \
    && apt-get install wget curl ca-certificates -y

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog
