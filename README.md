This repo is used to build a docker image that contains build support
based on RHEL7.5. This is used to build RPMs by mounting an rpmbuild
directory to /build inside the image.

Build the image with the command:
```
sudo docker image build --build-arg http_proxy="http://172.17.0.1:3128" --build-arg https_proxy="http://172.17.0.1:3128" -t rhel-rpm-build:latest .
```

Run the image with the command:
```
sudo docker run --rm -it --env http_proxy="http://172.17.0.1:3128" --env https_proxy="http://172.17.0.1:3128" --volume /path/to/rpmbuild:/build rhel-rpm-build:latest
```

