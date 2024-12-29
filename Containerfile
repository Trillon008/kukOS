ARG SOURCE_IMAGE="kinoite"
ARG SOURCE_SUFFIX="main"
ARG SOURCE_TAG="41"

FROM registry.fedoraproject.org/fedora-toolbox:41 as build
RUN dnf install -y cmake \
  gcc \
  gcc-c++ \
  systemd-devel \
  systemd-udev \
  rpmbuild  \
  rpmdevtools \
  ncurses 

RUN rpmdev-setuptree && \
  curl https://raw.githubusercontent.com/ublue-os/bazzite/refs/heads/main/spec_files/xwiimote-ng/xwiimote-ng.spec -o /root/rpmbuild/SPECS/xwiimote.spec && \
  wget https://github.com/dev-0x7C6/xwiimote-ng/archive/refs/tags/v3.0.1.tar.gz -O /root/rpmbuild/SOURCES/v3.0.1.tar.gz && \
  rpmbuild -ba /root/rpmbuild/SPECS/xwiimote.spec

### 2. SOURCE IMAGE
FROM ghcr.io/ublue-os/${SOURCE_IMAGE}-${SOURCE_SUFFIX}:${SOURCE_TAG}


#### 3. MODIFICATIONS
COPY / /ctx
COPY --from=build /root/rpmbuild/RPMS/x86_64/xwiimote-ng-3.0.1-1.fc41.x86_64.rpm /ctx/

RUN mkdir -p /var/lib/alternatives && \
  /ctx/build/build-all.sh && \
  ostree container commit

## NOTES:
# - /var/lib/alternatives is required to prevent failure with some RPM installs
# - All RUN commands must end with ostree container commit
#   see: https://coreos.github.io/rpm-ostree/container/#using-ostree-container-commit
