FROM centos

RUN yum update ; \
	yum install -y freetype libSM libXrender fontconfig libXext libXt \
		tcl tcsh perl libXft xorg-x11-fonts-Type1 net-tools \
		libXScrnSaver-1.2.2 \
		libusb-0.1.4 usbutils


RUN adduser -u 1000 -g 100 diamond; echo ". env-setup.sh" >> /home/diamond/.bashrc

COPY env-setup.sh /home/diamond

ENTRYPOINT ["/bin/bash"]