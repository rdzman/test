# FROM debian:stable as builder
# 
# ENV DEBIAN_FRONTEND noninteractive
# 
# RUN apt-get update && apt-get install -yqq --no-install-recommends \
# 	ca-certificates \
# 	less \
# 	git \
# 	make \
# 	pkg-config \
# 	g++ \
# 	gcc \
# 	libc6-dev \
# 	octave \
# 	octave-optim \
# 	liboctave-dev \
# 	libopenblas-dev \
#         libglpk-dev \
# 	&& rm -rf /var/lib/apt/lists/*
# 
# ENV CFLAGS -I/usr/include/openblas
# 
# RUN git clone https://github.com/MATPOWER/matpower.git /usr/src/matpower
# 
# RUN cd /usr/src/matpower && octave-cli --no-gui --eval "install_matpower(1,1,1)"
# 
# WORKDIR /workspace
# 
# CMD ["octave-cli", "-q", "--no-gui"]


FROM debian:stable

# RUN apt-get update && apt-get install -yqq --no-install-recommends \
# 	octave \
# 	less \
# 	&& rm -rf /var/lib/apt/lists/*
# 
# ENV INSTALL_PATH /usr/local/matpower
# 
# COPY --from=builder /usr/src/matpower $INSTALL_PATH
# 
# RUN cd $INSTALL_PATH && octave-cli --no-gui --eval "install_matpower(1,1,1)"

WORKDIR /workspace
COPY run_docker_tests.sh /usr/local/bin

# ENTRYPOINT ["octave-cli", "-q", "--no-gui"]
# ENTRYPOINT ["octave-cli", "-q", "--no-gui"]
