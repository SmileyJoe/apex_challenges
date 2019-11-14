FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
    && apt-get install tesseract-ocr \
    && apt-get install libtesseract-dev \
    && pip install -r requirements.txt \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod

# Give back control
USER root