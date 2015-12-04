FROM ubuntu:14.04

# Set env variables for q
ENV QHOME /q
ENV PATH ${PATH}:${QHOME}/l32/

# Install rlwrap and kdb+
RUN \
	apt-get update && \
	apt-get install -y curl rlwrap unzip lib32z1 lib32ncurses5 lib32bz2-1.0 && \
	curl --silent -O kx.com/347_d0szre-fr8917_llrsT4Yle-5839sdX/3.3/linux.zip --referer http://kx.com/software-download.php && \
	unzip linux.zip && \
	rm linux.zip && \
	echo "alias q='rlwrap q'" >> /root/.bashrc

