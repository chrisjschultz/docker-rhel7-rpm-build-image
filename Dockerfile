FROM rhel7.5:latest

ENV PYTHONPATH /opt/pylocal/lib64/python2.7/site-packages:/opt/pylocal/lib/python2.7/site-packages/
ENV PATH /opt/pylocal/bin:$PATH

COPY build.sh /
COPY build-rpm.sh /

RUN set -x && \
    yum -y upgrade && \
    yum -y install sudo epel-release krb5-devel python-devel rpm-build "@Development Tools" && \
    yum clean all && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py

ENTRYPOINT [ "/build.sh" ]
