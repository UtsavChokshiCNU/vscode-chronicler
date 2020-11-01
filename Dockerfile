FROM gitpod/workspace-full

RUN brew update && brew install ffmpeg node
