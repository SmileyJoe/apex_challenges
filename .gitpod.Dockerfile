FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
        tesseract-ocr \
        libtesseract-dev \
        locate \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/* \
    && pip install -r requirements.txt

USER gitpod

# Give back control
USER root