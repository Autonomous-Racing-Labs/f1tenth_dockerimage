FROM ros:iron-ros-base-jammy

RUN apt-get update && apt-get install -y \
	ninja-build stow cmake libgoogle-glog-dev libgflags-dev \
	libatlas-base-dev libeigen3-dev libsuitesparse-dev \
	nano libabsl-dev libabsl20210324 python3-absl libboost-dev \ 
	libboost-iostreams-dev libceres-dev liblua5.2-dev \
	liblua5.2-0 lua5.2 libprotobuf-dev libcairo2-dev \
	libpcl-conversions-dev ros-iron-pcl-conversions protobuf-compiler \
	libasio-dev nano ros-iron-udp-msgs ros-iron-ackermann-msgs screen \
	&& rm -rf /var/lib/apt/lists/*
