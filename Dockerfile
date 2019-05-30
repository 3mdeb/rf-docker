FROM python:2.7.15-slim-stretch

MAINTAINER "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>

# TODO: go with multi-stage build to remove git from final image as it is not
# needed at runtime
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# install python modules
COPY requirements.txt .
RUN  pip install --no-cache-dir --upgrade pip && \
     pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["robot"]
