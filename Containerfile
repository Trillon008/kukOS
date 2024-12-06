ARG SOURCE_IMAGE="kinoite"
ARG SOURCE_SUFFIX="main"
ARG SOURCE_TAG="41"

### 2. SOURCE IMAGE
FROM ghcr.io/ublue-os/${SOURCE_IMAGE}-${SOURCE_SUFFIX}:${SOURCE_TAG}


### 3. MODIFICATIONS
COPY / /ctx

RUN mkdir -p /var/lib/alternatives && \
    /ctx/build/build-all.sh && \
    ostree container commit
## NOTES:
# - /var/lib/alternatives is required to prevent failure with some RPM installs
# - All RUN commands must end with ostree container commit
#   see: https://coreos.github.io/rpm-ostree/container/#using-ostree-container-commit
